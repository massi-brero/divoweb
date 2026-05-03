package de.divowin.schauverwaltung.service;

import de.divowin.schauverwaltung.dto.SiegerRequestDTO;
import de.divowin.schauverwaltung.dto.SiegerResponseDTO;
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
class SiegerServiceTest {

    @Mock SiegerRepository siegerRepository;
    @Mock SchauRepository schauRepository;
    @Mock ZuecherRepository zuecherRepository;
    @Mock SchauanmeldungRepository anmeldungRepository;

    @InjectMocks SiegerService siegerService;

    private Schau schau;
    private Zuecher zuecher;
    private Schauanmeldung anmeldung;
    private Vogelklasse vogelklasse;
    private Sieger sieger;
    private SiegerRequestDTO requestDTO;

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

        anmeldung = new Schauanmeldung();
        anmeldung.setId(100L);
        anmeldung.setSchau(schau);
        anmeldung.setZuecher(zuecher);
        anmeldung.setVogelklasse(vogelklasse);
        anmeldung.setKaefigNummer(7);

        sieger = new Sieger();
        sieger.setId(50L);
        sieger.setSchau(schau);
        sieger.setZuecher(zuecher);
        sieger.setAnmeldung(anmeldung);
        sieger.setKategorie("Schausieger");
        sieger.setPosition(1);
        sieger.setBeschreibung("Ehrenpreis Verein");
        sieger.setManuellEingetragen(true);

        requestDTO = new SiegerRequestDTO(
                "Schausieger", 1, 10L, 100L, "Ehrenpreis Verein", true
        );
    }

    // ── siegerListe ──────────────────────────────────────────────────────────

    @Test
    void siegerListe_gibtResponseDTOListeZurueck() {
        when(siegerRepository.findBySchauIdOrderByKategorieAscPositionAsc(1L))
                .thenReturn(List.of(sieger));

        List<SiegerResponseDTO> result = siegerService.siegerListe(1L);

        assertThat(result).hasSize(1);
        SiegerResponseDTO dto = result.get(0);
        assertThat(dto.id()).isEqualTo(50L);
        assertThat(dto.kategorie()).isEqualTo("Schausieger");
        assertThat(dto.position()).isEqualTo(1);
        assertThat(dto.zuecherNachname()).isEqualTo("Mustermann");
        assertThat(dto.kaefigNummer()).isEqualTo(7);
        assertThat(dto.klassenschluessel()).isEqualTo("WP");
        assertThat(dto.manuellEingetragen()).isTrue();
    }

    @Test
    void siegerListe_ohneAnmeldung_kaefigNummerUndKlasseNull() {
        sieger.setAnmeldung(null);
        when(siegerRepository.findBySchauIdOrderByKategorieAscPositionAsc(1L))
                .thenReturn(List.of(sieger));

        SiegerResponseDTO dto = siegerService.siegerListe(1L).get(0);

        assertThat(dto.kaefigNummer()).isNull();
        assertThat(dto.klassenschluessel()).isNull();
    }

    // ── eintragen ────────────────────────────────────────────────────────────

    @Test
    void eintragen_persistiertMitAnmeldungUndGibtDTOZurueck() {
        when(schauRepository.findById(1L)).thenReturn(Optional.of(schau));
        when(zuecherRepository.findById(10L)).thenReturn(Optional.of(zuecher));
        when(anmeldungRepository.findById(100L)).thenReturn(Optional.of(anmeldung));
        when(siegerRepository.save(any(Sieger.class))).thenReturn(sieger);

        SiegerResponseDTO dto = siegerService.eintragen(1L, requestDTO);

        assertThat(dto.kategorie()).isEqualTo("Schausieger");
        verify(siegerRepository).save(any(Sieger.class));
    }

    @Test
    void eintragen_ohneAnmeldungId_funktioniert() {
        SiegerRequestDTO ohneAnmeldung = new SiegerRequestDTO(
                "Sonderpreis", 1, 10L, null, null, true
        );
        sieger.setAnmeldung(null);
        when(schauRepository.findById(1L)).thenReturn(Optional.of(schau));
        when(zuecherRepository.findById(10L)).thenReturn(Optional.of(zuecher));
        when(siegerRepository.save(any(Sieger.class))).thenReturn(sieger);

        SiegerResponseDTO dto = siegerService.eintragen(1L, ohneAnmeldung);

        assertThat(dto).isNotNull();
        verify(anmeldungRepository, never()).findById(any());
    }

    @Test
    void eintragen_wirftException_wennSchauNichtGefunden() {
        when(schauRepository.findById(99L)).thenReturn(Optional.empty());

        assertThatThrownBy(() -> siegerService.eintragen(99L, requestDTO))
                .isInstanceOf(EntityNotFoundException.class)
                .hasMessageContaining("99");
    }

    @Test
    void eintragen_wirftException_wennZuecherNichtGefunden() {
        when(schauRepository.findById(1L)).thenReturn(Optional.of(schau));
        when(zuecherRepository.findById(10L)).thenReturn(Optional.empty());

        assertThatThrownBy(() -> siegerService.eintragen(1L, requestDTO))
                .isInstanceOf(EntityNotFoundException.class)
                .hasMessageContaining("10");
    }

    @Test
    void eintragen_wirftException_wennAnmeldungNichtGefunden() {
        when(schauRepository.findById(1L)).thenReturn(Optional.of(schau));
        when(zuecherRepository.findById(10L)).thenReturn(Optional.of(zuecher));
        when(anmeldungRepository.findById(100L)).thenReturn(Optional.empty());

        assertThatThrownBy(() -> siegerService.eintragen(1L, requestDTO))
                .isInstanceOf(EntityNotFoundException.class)
                .hasMessageContaining("100");
    }

    // ── loeschen ─────────────────────────────────────────────────────────────

    @Test
    void loeschen_loeschtSiegerWennZurSchauGehoerend() {
        when(siegerRepository.findById(50L)).thenReturn(Optional.of(sieger));

        siegerService.loeschen(1L, 50L);

        verify(siegerRepository).deleteById(50L);
    }

    @Test
    void loeschen_wirftException_wennSiegerNichtGefunden() {
        when(siegerRepository.findById(99L)).thenReturn(Optional.empty());

        assertThatThrownBy(() -> siegerService.loeschen(1L, 99L))
                .isInstanceOf(EntityNotFoundException.class)
                .hasMessageContaining("99");
        verify(siegerRepository, never()).deleteById(any());
    }

    @Test
    void loeschen_wirftException_wennSiegerZuAndererSchauGehoert() {
        Schau andereSchau = new Schau();
        andereSchau.setId(99L);
        andereSchau.setSchautyp(Schautyp.VEREINSSCHAU);
        andereSchau.setJahr(2024);
        andereSchau.setOrt("München");
        andereSchau.setVerband(Verband.DWV);
        andereSchau.setStandgeldProVogel(new BigDecimal("2.50"));
        sieger.setSchau(andereSchau);

        when(siegerRepository.findById(50L)).thenReturn(Optional.of(sieger));

        assertThatThrownBy(() -> siegerService.loeschen(1L, 50L))
                .isInstanceOf(IllegalArgumentException.class)
                .hasMessageContaining("50")
                .hasMessageContaining("1");
        verify(siegerRepository, never()).deleteById(any());
    }
}
