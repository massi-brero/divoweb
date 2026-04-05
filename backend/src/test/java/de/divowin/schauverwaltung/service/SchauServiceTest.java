package de.divowin.schauverwaltung.service;

import de.divowin.schauverwaltung.dto.SchauDTO;
import de.divowin.schauverwaltung.entity.Richter;
import de.divowin.schauverwaltung.entity.Schau;
import de.divowin.schauverwaltung.enums.Schautyp;
import de.divowin.schauverwaltung.enums.Verband;
import de.divowin.schauverwaltung.repository.SchauRepository;
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
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
class SchauServiceTest {

    @Mock
    SchauRepository schauRepository;

    @InjectMocks
    SchauService schauService;

    private Schau schau;

    @BeforeEach
    void setUp() {
        schau = new Schau();
        schau.setId(1L);
        schau.setSchautyp(Schautyp.MEISTERSCHAU);
        schau.setJahr(2025);
        schau.setOrt("Nürnberg");
        schau.setVerband(Verband.DWV);
        schau.setStandgeldProVogel(new BigDecimal("2.50"));
        schau.setStatus(Schau.Schaustatus.VORBEREITUNG);
    }

    // ── alleSchauen ─────────────────────────────────────────────────────────

    @Test
    void alleSchauen_gibtListeVonSchauDTOsZurueck() {
        when(schauRepository.findAll()).thenReturn(List.of(schau));

        List<SchauDTO> result = schauService.alleSchauen();

        assertThat(result).hasSize(1);
        SchauDTO dto = result.get(0);
        assertThat(dto.id()).isEqualTo(1L);
        assertThat(dto.ort()).isEqualTo("Nürnberg");
        assertThat(dto.schautyp()).isEqualTo(Schautyp.MEISTERSCHAU);
        assertThat(dto.jahr()).isEqualTo(2025);
        assertThat(dto.verband()).isEqualTo(Verband.DWV);
        assertThat(dto.status()).isEqualTo(Schau.Schaustatus.VORBEREITUNG);
    }

    @Test
    void alleSchauen_liefertLeereListe_wennKeineSchauen() {
        when(schauRepository.findAll()).thenReturn(List.of());

        List<SchauDTO> result = schauService.alleSchauen();

        assertThat(result).isEmpty();
    }

    @Test
    void alleSchauen_enthältKeineRichter_beiListenabfrage() {
        when(schauRepository.findAll()).thenReturn(List.of(schau));

        List<SchauDTO> result = schauService.alleSchauen();

        assertThat(result.get(0).richter()).isEmpty();
    }

    // ── schauenNachJahr ──────────────────────────────────────────────────────

    @Test
    void schauenNachJahr_gibtNurSchauerDesJahresZurueck() {
        when(schauRepository.findByJahrOrderBySchautypAsc(2025)).thenReturn(List.of(schau));

        List<SchauDTO> result = schauService.schauenNachJahr(2025);

        assertThat(result).hasSize(1);
        assertThat(result.get(0).jahr()).isEqualTo(2025);
        verify(schauRepository).findByJahrOrderBySchautypAsc(2025);
    }

    // ── schauById ────────────────────────────────────────────────────────────

    @Test
    void schauById_gibtSchauMitRichternZurueck() {
        Richter richter = new Richter();
        richter.setId(10L);
        richter.setPosition(1);
        richter.setNachname("Mustermann");
        richter.setVorname("Max");
        schau.getRichter().add(richter);

        when(schauRepository.findByIdWithRichter(1L)).thenReturn(Optional.of(schau));

        SchauDTO dto = schauService.schauById(1L);

        assertThat(dto.id()).isEqualTo(1L);
        assertThat(dto.richter()).hasSize(1);
        assertThat(dto.richter().get(0).nachname()).isEqualTo("Mustermann");
        assertThat(dto.richter().get(0).vollname()).isEqualTo("Max Mustermann");
    }

    @Test
    void schauById_wirftException_wennNichtGefunden() {
        when(schauRepository.findByIdWithRichter(99L)).thenReturn(Optional.empty());

        assertThatThrownBy(() -> schauService.schauById(99L))
                .isInstanceOf(IllegalArgumentException.class)
                .hasMessageContaining("99");
    }

    // ── schauAnlegen ─────────────────────────────────────────────────────────

    @Test
    void schauAnlegen_persistiertUndGibtDTOZurueck() {
        Schau gespeichert = new Schau();
        gespeichert.setId(42L);
        gespeichert.setSchautyp(schau.getSchautyp());
        gespeichert.setJahr(schau.getJahr());
        gespeichert.setOrt(schau.getOrt());
        gespeichert.setVerband(schau.getVerband());
        gespeichert.setStandgeldProVogel(schau.getStandgeldProVogel());
        gespeichert.setStatus(schau.getStatus());

        when(schauRepository.save(schau)).thenReturn(gespeichert);

        SchauDTO dto = schauService.schauAnlegen(schau);

        assertThat(dto.id()).isEqualTo(42L);
        assertThat(dto.ort()).isEqualTo("Nürnberg");
        verify(schauRepository).save(schau);
    }

    // ── statusAendern ─────────────────────────────────────────────────────────

    @Test
    void statusAendern_aktualisiertStatusUndGibtDTOZurueck() {
        when(schauRepository.findByIdWithRichter(1L)).thenReturn(Optional.of(schau));
        when(schauRepository.save(schau)).thenReturn(schau);

        SchauDTO dto = schauService.statusAendern(1L, Schau.Schaustatus.ABGESCHLOSSEN);

        assertThat(dto.status()).isEqualTo(Schau.Schaustatus.ABGESCHLOSSEN);
        verify(schauRepository).save(schau);
    }

    @Test
    void statusAendern_wirftException_wennSchauNichtGefunden() {
        when(schauRepository.findByIdWithRichter(99L)).thenReturn(Optional.empty());

        assertThatThrownBy(() -> schauService.statusAendern(99L, Schau.Schaustatus.ABGESCHLOSSEN))
                .isInstanceOf(IllegalArgumentException.class)
                .hasMessageContaining("99");
    }

    // ── DTO-Felder ────────────────────────────────────────────────────────────

    @Test
    void schauById_bezeichnungWirdKorrektGesetzt() {
        when(schauRepository.findByIdWithRichter(1L)).thenReturn(Optional.of(schau));

        SchauDTO dto = schauService.schauById(1L);

        assertThat(dto.bezeichnung()).isEqualTo("Meisterschau Nürnberg 2025");
    }
}
