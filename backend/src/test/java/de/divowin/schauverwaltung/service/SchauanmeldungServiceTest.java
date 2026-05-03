package de.divowin.schauverwaltung.service;

import de.divowin.schauverwaltung.dto.PlatzierungResponseDTO;
import de.divowin.schauverwaltung.dto.SchauanmeldungRequestDTO;
import de.divowin.schauverwaltung.dto.SchauanmeldungResponseDTO;
import de.divowin.schauverwaltung.entity.*;
import de.divowin.schauverwaltung.enums.*;
import de.divowin.schauverwaltung.repository.*;
import jakarta.persistence.EntityNotFoundException;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.math.BigDecimal;
import java.util.List;
import java.util.Optional;

import static org.assertj.core.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
class SchauanmeldungServiceTest {

    @Mock SchauanmeldungRepository anmeldungRepository;
    @Mock SchauRepository schauRepository;
    @Mock ZuecherRepository zuecherRepository;
    @Mock VogelklasseRepository vogelklasseRepository;

    @InjectMocks SchauanmeldungService anmeldungService;

    private Schau schau;
    private Zuecher zuecher;
    private Vogelklasse vogelklasse;
    private Schauanmeldung anmeldung;
    private SchauanmeldungRequestDTO requestDTO;

    @BeforeEach
    void setUp() {
        schau = new Schau();
        schau.setId(1L);
        schau.setSchautyp(Schautyp.MEISTERSCHAU);
        schau.setJahr(2025);
        schau.setOrt("Nürnberg");
        schau.setVerband(Verband.DWV);
        schau.setStandgeldProVogel(new BigDecimal("2.50"));

        zuecher = new Zuecher();
        zuecher.setId(10L);
        zuecher.setVerbandsnummer("10294");
        zuecher.setNachname("Mustermann");
        zuecher.setVorname("Max");

        vogelklasse = new Vogelklasse();
        vogelklasse.setId(5L);
        vogelklasse.setSkl1("WP");
        vogelklasse.setSkl2("GR");
        vogelklasse.setSkl3("DU");
        vogelklasse.setFarbe1("Grau");
        vogelklasse.setFarbe2("Dunkel");

        anmeldung = new Schauanmeldung();
        anmeldung.setId(100L);
        anmeldung.setSchau(schau);
        anmeldung.setZuecher(zuecher);
        anmeldung.setVogelklasse(vogelklasse);
        anmeldung.setKaefigNummer(1);
        anmeldung.setGeschlecht(Geschlecht.MAENNLICH);
        anmeldung.setRingNummer("DWV-25-001");
        anmeldung.setZuchtjahr(2025);
        anmeldung.setEingeliefert(true);
        anmeldung.setPlatzierungskennzeichen(Platzierungskennzeichen.NORMAL);
        anmeldung.setMedaille(Medaille.KEINE);

        requestDTO = new SchauanmeldungRequestDTO(
                10L, 5L, Geschlecht.MAENNLICH, "DWV-25-001", 2025
        );
    }

    // ── alleAnmeldungen ──────────────────────────────────────────────────────

    @Test
    void alleAnmeldungen_gibtResponseDTOListeZurueck() {
        when(anmeldungRepository.findBySchauIdOrderByKaefigNummerAsc(1L))
                .thenReturn(List.of(anmeldung));

        List<SchauanmeldungResponseDTO> result = anmeldungService.alleAnmeldungen(1L);

        assertThat(result).hasSize(1);
        SchauanmeldungResponseDTO dto = result.get(0);
        assertThat(dto.id()).isEqualTo(100L);
        assertThat(dto.kaefigNummer()).isEqualTo(1);
        assertThat(dto.zuecherNachname()).isEqualTo("Mustermann");
        assertThat(dto.klassenschluessel()).isEqualTo("WP/GR/DU");
        assertThat(dto.farbbezeichnung()).isEqualTo("Grau Dunkel");
        assertThat(dto.geschlecht()).isEqualTo(Geschlecht.MAENNLICH);
    }

    @Test
    void alleAnmeldungen_leereListeWennKeineAnmeldungen() {
        when(anmeldungRepository.findBySchauIdOrderByKaefigNummerAsc(1L))
                .thenReturn(List.of());

        assertThat(anmeldungService.alleAnmeldungen(1L)).isEmpty();
    }

    // ── nichtPlatzierte ──────────────────────────────────────────────────────

    @Test
    void nichtPlatzierte_gibtUnbewertetVoegelZurueck() {
        when(anmeldungRepository.findNichtPlatzierte(1L)).thenReturn(List.of(anmeldung));

        List<SchauanmeldungResponseDTO> result = anmeldungService.nichtPlatzierte(1L);

        assertThat(result).hasSize(1);
        verify(anmeldungRepository).findNichtPlatzierte(1L);
    }

    // ── naechsteKaefigNummer ─────────────────────────────────────────────────

    @Test
    void naechsteKaefigNummer_delegiertAnRepository() {
        when(anmeldungRepository.naechsteKaefigNummer(1L)).thenReturn(7);

        assertThat(anmeldungService.naechsteKaefigNummer(1L)).isEqualTo(7);
    }

    // ── byKaefigNummer ───────────────────────────────────────────────────────

    @Test
    void byKaefigNummer_gibtKorrekteAnmeldungZurueck() {
        when(anmeldungRepository.findBySchauIdAndKaefigNummer(1L, 1))
                .thenReturn(Optional.of(anmeldung));

        SchauanmeldungResponseDTO dto = anmeldungService.byKaefigNummer(1L, 1);

        assertThat(dto.kaefigNummer()).isEqualTo(1);
        assertThat(dto.ringNummer()).isEqualTo("DWV-25-001");
    }

    @Test
    void byKaefigNummer_wirftException_wennNichtGefunden() {
        when(anmeldungRepository.findBySchauIdAndKaefigNummer(1L, 99))
                .thenReturn(Optional.empty());

        assertThatThrownBy(() -> anmeldungService.byKaefigNummer(1L, 99))
                .isInstanceOf(EntityNotFoundException.class)
                .hasMessageContaining("99")
                .hasMessageContaining("1");
    }

    // ── anmelden ─────────────────────────────────────────────────────────────

    @Test
    void anmelden_persistiertUndGibtDTOZurueck() {
        when(schauRepository.findById(1L)).thenReturn(Optional.of(schau));
        when(zuecherRepository.findById(10L)).thenReturn(Optional.of(zuecher));
        when(vogelklasseRepository.findById(5L)).thenReturn(Optional.of(vogelklasse));
        when(anmeldungRepository.naechsteKaefigNummer(1L)).thenReturn(3);
        when(anmeldungRepository.save(any(Schauanmeldung.class))).thenReturn(anmeldung);

        SchauanmeldungResponseDTO dto = anmeldungService.anmelden(1L, requestDTO);

        assertThat(dto).isNotNull();
        verify(anmeldungRepository).save(any(Schauanmeldung.class));
    }

    @Test
    void anmelden_wirftException_wennSchauNichtGefunden() {
        when(schauRepository.findById(99L)).thenReturn(Optional.empty());

        assertThatThrownBy(() -> anmeldungService.anmelden(99L, requestDTO))
                .isInstanceOf(EntityNotFoundException.class)
                .hasMessageContaining("99");
    }

    @Test
    void anmelden_wirftException_wennZuecherNichtGefunden() {
        when(schauRepository.findById(1L)).thenReturn(Optional.of(schau));
        when(zuecherRepository.findById(10L)).thenReturn(Optional.empty());

        assertThatThrownBy(() -> anmeldungService.anmelden(1L, requestDTO))
                .isInstanceOf(EntityNotFoundException.class)
                .hasMessageContaining("10");
    }

    @Test
    void anmelden_wirftException_wennVogelklasseNichtGefunden() {
        when(schauRepository.findById(1L)).thenReturn(Optional.of(schau));
        when(zuecherRepository.findById(10L)).thenReturn(Optional.of(zuecher));
        when(vogelklasseRepository.findById(5L)).thenReturn(Optional.empty());

        assertThatThrownBy(() -> anmeldungService.anmelden(1L, requestDTO))
                .isInstanceOf(EntityNotFoundException.class)
                .hasMessageContaining("5");
    }

    // ── platzierungEingeben ───────────────────────────────────────────────────

    @Test
    void platzierungEingeben_setztPlatzierungUndGibtDTOZurueck() {
        anmeldung.setMedaille(Medaille.GOLD);
        when(anmeldungRepository.findBySchauIdAndKaefigNummer(1L, 1))
                .thenReturn(Optional.of(anmeldung));
        when(anmeldungRepository.save(anmeldung)).thenReturn(anmeldung);

        PlatzierungResponseDTO dto = anmeldungService.platzierungEingeben(1L, 1, 2);

        assertThat(dto.anmeldungId()).isEqualTo(100L);
        assertThat(dto.kaefigNummer()).isEqualTo(1);
        assertThat(dto.medaille()).isEqualTo(Medaille.GOLD);
        verify(anmeldungRepository).save(anmeldung);
        assertThat(anmeldung.getPlatzierung()).isEqualTo(2);
    }

    @Test
    void platzierungEingeben_wirftException_wennKaefigNichtGefunden() {
        when(anmeldungRepository.findBySchauIdAndKaefigNummer(1L, 99))
                .thenReturn(Optional.empty());

        assertThatThrownBy(() -> anmeldungService.platzierungEingeben(1L, 99, 1))
                .isInstanceOf(EntityNotFoundException.class);
    }
}
