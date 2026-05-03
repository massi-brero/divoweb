package de.divowin.schauverwaltung.service;

import de.divowin.schauverwaltung.dto.ZuecherRequestDTO;
import de.divowin.schauverwaltung.dto.ZuecherResponseDTO;
import de.divowin.schauverwaltung.entity.Zuecher;
import de.divowin.schauverwaltung.enums.Verband;
import de.divowin.schauverwaltung.repository.ZuecherRepository;
import jakarta.persistence.EntityNotFoundException;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.List;
import java.util.Optional;

import static org.assertj.core.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
class ZuecherServiceTest {

    @Mock ZuecherRepository zuecherRepository;
    @InjectMocks ZuecherService zuecherService;

    private Zuecher zuecher;
    private ZuecherRequestDTO requestDTO;

    @BeforeEach
    void setUp() {
        zuecher = new Zuecher();
        zuecher.setId(1L);
        zuecher.setVerbandsnummer("10294");
        zuecher.setVerband(Verband.DWV);
        zuecher.setNachname("Mustermann");
        zuecher.setVorname("Max");
        zuecher.setStrasse("Musterstraße 1");
        zuecher.setPlz("90402");
        zuecher.setWohnort("Nürnberg");
        zuecher.setLand("D");
        zuecher.setTelefon("0911-123456");
        zuecher.setKatalogEinverstaendnis(true);

        requestDTO = new ZuecherRequestDTO(
                "10294", Verband.DWV, "Mustermann", "Max",
                "Musterstraße 1", "90402", "Nürnberg", "D",
                "0911-123456", true
        );
    }

    // ── alleZuecher ──────────────────────────────────────────────────────────

    @Test
    void alleZuecher_gibtResponseDTOListeZurueck() {
        when(zuecherRepository.findAll()).thenReturn(List.of(zuecher));

        List<ZuecherResponseDTO> result = zuecherService.alleZuecher();

        assertThat(result).hasSize(1);
        assertThat(result.get(0).nachname()).isEqualTo("Mustermann");
        assertThat(result.get(0).verbandsnummer()).isEqualTo("10294");
        assertThat(result.get(0).verband()).isEqualTo(Verband.DWV);
    }

    @Test
    void alleZuecher_liefertLeereListeWennKeineZuecher() {
        when(zuecherRepository.findAll()).thenReturn(List.of());
        assertThat(zuecherService.alleZuecher()).isEmpty();
    }

    @Test
    void alleZuecher_vollnameBefuelltKorrekt() {
        when(zuecherRepository.findAll()).thenReturn(List.of(zuecher));

        ZuecherResponseDTO dto = zuecherService.alleZuecher().get(0);

        assertThat(dto.vollname()).isEqualTo("Mustermann, Max");
    }

    // ── zuecherById ──────────────────────────────────────────────────────────

    @Test
    void zuecherById_gibtKorrektenZuecherZurueck() {
        when(zuecherRepository.findById(1L)).thenReturn(Optional.of(zuecher));

        ZuecherResponseDTO dto = zuecherService.zuecherById(1L);

        assertThat(dto.id()).isEqualTo(1L);
        assertThat(dto.nachname()).isEqualTo("Mustermann");
        assertThat(dto.katalogEinverstaendnis()).isTrue();
    }

    @Test
    void zuecherById_wirftEntityNotFoundException_wennNichtGefunden() {
        when(zuecherRepository.findById(99L)).thenReturn(Optional.empty());

        assertThatThrownBy(() -> zuecherService.zuecherById(99L))
                .isInstanceOf(EntityNotFoundException.class)
                .hasMessageContaining("99");
    }

    // ── sucheNachNachname ────────────────────────────────────────────────────

    @Test
    void sucheNachNachname_delegiertAnRepository() {
        when(zuecherRepository.findByNachnameContainingIgnoreCaseOrderByNachnameAsc("must"))
                .thenReturn(List.of(zuecher));

        List<ZuecherResponseDTO> result = zuecherService.sucheNachNachname("must");

        assertThat(result).hasSize(1);
        verify(zuecherRepository).findByNachnameContainingIgnoreCaseOrderByNachnameAsc("must");
    }

    // ── anlegen ──────────────────────────────────────────────────────────────

    @Test
    void anlegen_persistiertUndGibtDTOZurueck() {
        Zuecher gespeichert = new Zuecher();
        gespeichert.setId(42L);
        gespeichert.setVerbandsnummer("10294");
        gespeichert.setVerband(Verband.DWV);
        gespeichert.setNachname("Mustermann");
        gespeichert.setVorname("Max");
        when(zuecherRepository.save(any(Zuecher.class))).thenReturn(gespeichert);

        ZuecherResponseDTO dto = zuecherService.anlegen(requestDTO);

        assertThat(dto.id()).isEqualTo(42L);
        assertThat(dto.nachname()).isEqualTo("Mustermann");
        verify(zuecherRepository).save(any(Zuecher.class));
    }

    // ── aktualisieren ─────────────────────────────────────────────────────────

    @Test
    void aktualisieren_aktualisiertFelderUndGibtDTOZurueck() {
        when(zuecherRepository.findById(1L)).thenReturn(Optional.of(zuecher));
        when(zuecherRepository.save(any(Zuecher.class))).thenReturn(zuecher);

        ZuecherRequestDTO update = new ZuecherRequestDTO(
                "10294", Verband.AZ, "Neumann", "Anna",
                "Neue Str. 2", "80331", "München", "D", null, false
        );
        ZuecherResponseDTO dto = zuecherService.aktualisieren(1L, update);

        assertThat(dto).isNotNull();
        verify(zuecherRepository).save(zuecher);
    }

    @Test
    void aktualisieren_wirftException_wennZuecherNichtGefunden() {
        when(zuecherRepository.findById(99L)).thenReturn(Optional.empty());

        assertThatThrownBy(() -> zuecherService.aktualisieren(99L, requestDTO))
                .isInstanceOf(EntityNotFoundException.class)
                .hasMessageContaining("99");
    }

    // ── Mapping: Vollname ohne Vorname ────────────────────────────────────────

    @Test
    void alleZuecher_vollnameNurNachname_wennKeinVorname() {
        zuecher.setVorname(null);
        when(zuecherRepository.findAll()).thenReturn(List.of(zuecher));

        ZuecherResponseDTO dto = zuecherService.alleZuecher().get(0);

        assertThat(dto.vollname()).isEqualTo("Mustermann");
    }
}
