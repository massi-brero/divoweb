package de.divowin.schauverwaltung.service;

import de.divowin.schauverwaltung.dto.StandgeldDTO;
import de.divowin.schauverwaltung.entity.*;
import de.divowin.schauverwaltung.enums.*;
import de.divowin.schauverwaltung.repository.*;
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
class StandgeldServiceTest {

    @Mock SchauRepository schauRepository;
    @Mock SchauanmeldungRepository anmeldungRepository;
    @Mock StandgeldRepository standgeldRepository;

    @InjectMocks StandgeldService standgeldService;

    private Schau schau;
    private Zuecher zuecher;
    private Vogelklasse vogelklasse;
    private Schauanmeldung anmeldung1;
    private Schauanmeldung anmeldung2;
    private Standgeld standgeld;

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
        zuecher.setNachname("Mustermann");
        zuecher.setVorname("Max");
        zuecher.setVerbandsnummer("10294");

        vogelklasse = new Vogelklasse();
        vogelklasse.setId(5L);
        vogelklasse.setSkl1("WP");
        vogelklasse.setFarbe1("Grau");

        anmeldung1 = new Schauanmeldung();
        anmeldung1.setId(100L);
        anmeldung1.setSchau(schau);
        anmeldung1.setZuecher(zuecher);
        anmeldung1.setVogelklasse(vogelklasse);
        anmeldung1.setKaefigNummer(1);
        anmeldung1.setGeschlecht(Geschlecht.MAENNLICH);
        anmeldung1.setEingeliefert(true);
        anmeldung1.setPlatzierungskennzeichen(Platzierungskennzeichen.NORMAL);
        anmeldung1.setMedaille(Medaille.KEINE);

        anmeldung2 = new Schauanmeldung();
        anmeldung2.setId(101L);
        anmeldung2.setSchau(schau);
        anmeldung2.setZuecher(zuecher);
        anmeldung2.setVogelklasse(vogelklasse);
        anmeldung2.setKaefigNummer(2);
        anmeldung2.setGeschlecht(Geschlecht.WEIBLICH);
        anmeldung2.setEingeliefert(false); // NE-Vogel
        anmeldung2.setPlatzierungskennzeichen(Platzierungskennzeichen.NICHT_EINGELIEFERT);
        anmeldung2.setMedaille(Medaille.KEINE);

        standgeld = new Standgeld();
        standgeld.setId(200L);
        standgeld.setSchau(schau);
        standgeld.setZuecher(zuecher);
        standgeld.setAnzahlGemeldet(2);
        standgeld.setAnzahlEingeliefert(1);
        standgeld.setStandgeldProVogel(new BigDecimal("2.50"));
        standgeld.setGesamtbetrag(new BigDecimal("2.50"));
    }

    // ── uebersichtFuerSchau ───────────────────────────────────────────────────

    @Test
    void uebersichtFuerSchau_gibtDTOListeZurueck() {
        when(standgeldRepository.findBySchauIdOrderByZuecherNachnameAsc(1L))
                .thenReturn(List.of(standgeld));

        List<StandgeldDTO> result = standgeldService.uebersichtFuerSchau(1L);

        assertThat(result).hasSize(1);
        StandgeldDTO dto = result.get(0);
        assertThat(dto.id()).isEqualTo(200L);
        assertThat(dto.zuecherNachname()).isEqualTo("Mustermann");
        assertThat(dto.anzahlGemeldet()).isEqualTo(2);
        assertThat(dto.anzahlEingeliefert()).isEqualTo(1);
        assertThat(dto.gesamtbetrag()).isEqualByComparingTo("2.50");
    }

    // ── berechneStandgeldFuerSchau ────────────────────────────────────────────

    @Test
    void berechneStandgeld_berechnetKorrektEingeliefertVsGemeldet() {
        when(schauRepository.findById(1L)).thenReturn(Optional.of(schau));
        when(anmeldungRepository.findBySchauIdOrderByKaefigNummerAsc(1L))
                .thenReturn(List.of(anmeldung1, anmeldung2));
        when(standgeldRepository.findBySchauIdAndZuecherId(1L, 10L))
                .thenReturn(Optional.empty());
        when(standgeldRepository.save(any(Standgeld.class))).thenReturn(standgeld);

        List<StandgeldDTO> result = standgeldService.berechneStandgeldFuerSchau(1L);

        assertThat(result).hasSize(1);
        verify(standgeldRepository).save(argThat(sg ->
                sg.getAnzahlGemeldet() == 2 && sg.getAnzahlEingeliefert() == 1
        ));
    }

    @Test
    void berechneStandgeld_aktualisiertVorhandenenDatensatz() {
        when(schauRepository.findById(1L)).thenReturn(Optional.of(schau));
        when(anmeldungRepository.findBySchauIdOrderByKaefigNummerAsc(1L))
                .thenReturn(List.of(anmeldung1));
        when(standgeldRepository.findBySchauIdAndZuecherId(1L, 10L))
                .thenReturn(Optional.of(standgeld));
        when(standgeldRepository.save(any(Standgeld.class))).thenReturn(standgeld);

        standgeldService.berechneStandgeldFuerSchau(1L);

        verify(standgeldRepository).save(standgeld); // vorhandenes Objekt – kein neues
    }

    @Test
    void berechneStandgeld_wirftException_wennSchauNichtGefunden() {
        when(schauRepository.findById(99L)).thenReturn(Optional.empty());

        assertThatThrownBy(() -> standgeldService.berechneStandgeldFuerSchau(99L))
                .isInstanceOf(IllegalArgumentException.class)
                .hasMessageContaining("99");
    }

    @Test
    void berechneStandgeld_leereListeWennKeineAnmeldungen() {
        when(schauRepository.findById(1L)).thenReturn(Optional.of(schau));
        when(anmeldungRepository.findBySchauIdOrderByKaefigNummerAsc(1L))
                .thenReturn(List.of());

        List<StandgeldDTO> result = standgeldService.berechneStandgeldFuerSchau(1L);

        assertThat(result).isEmpty();
        verify(standgeldRepository, never()).save(any());
    }
}
