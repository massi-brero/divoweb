package de.divowin.schauverwaltung.service;

import de.divowin.schauverwaltung.dto.StandgeldDTO;
import de.divowin.schauverwaltung.entity.*;
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
import static org.mockito.ArgumentMatchers.*;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
class StandgeldServiceTest {

    @Mock
    SchauRepository schauRepository;

    @Mock
    SchauanmeldungRepository anmeldungRepository;

    @Mock
    StandgeldRepository standgeldRepository;

    @InjectMocks
    StandgeldService standgeldService;

    private Schau schau;
    private Zuecher zuecher;

    @BeforeEach
    void setUp() {
        schau = new Schau();
        schau.setId(1L);
        schau.setStandgeldProVogel(new BigDecimal("2.50"));

        zuecher = new Zuecher();
        zuecher.setId(10L);
        zuecher.setNachname("Mustermann");
        zuecher.setVorname("Max");
        zuecher.setVerbandsnummer("12345");
    }

    // ── uebersichtFuerSchau ──────────────────────────────────────────────────

    @Test
    void uebersichtFuerSchau_gibtStandgeldDTOsZurueck() {
        Standgeld sg = buildStandgeld(3, 2);
        when(standgeldRepository.findBySchauIdOrderByZuecherNachnameAsc(1L))
                .thenReturn(List.of(sg));

        List<StandgeldDTO> result = standgeldService.uebersichtFuerSchau(1L);

        assertThat(result).hasSize(1);
        StandgeldDTO dto = result.get(0);
        assertThat(dto.zuecherNachname()).isEqualTo("Mustermann");
        assertThat(dto.anzahlGemeldet()).isEqualTo(3);
        assertThat(dto.anzahlEingeliefert()).isEqualTo(2);
        assertThat(dto.gesamtbetrag()).isEqualByComparingTo("5.00");
    }

    @Test
    void uebersichtFuerSchau_liefertLeereListe_wennKeineEintraege() {
        when(standgeldRepository.findBySchauIdOrderByZuecherNachnameAsc(1L))
                .thenReturn(List.of());

        List<StandgeldDTO> result = standgeldService.uebersichtFuerSchau(1L);

        assertThat(result).isEmpty();
    }

    // ── berechneStandgeldFuerSchau ───────────────────────────────────────────

    @Test
    void berechneStandgeldFuerSchau_wirftException_wennSchauNichtGefunden() {
        when(schauRepository.findById(99L)).thenReturn(Optional.empty());

        assertThatThrownBy(() -> standgeldService.berechneStandgeldFuerSchau(99L))
                .isInstanceOf(IllegalArgumentException.class)
                .hasMessageContaining("99");
    }

    @Test
    void berechneStandgeldFuerSchau_berechnetGesamtbetragKorrekt() {
        Schauanmeldung anmeldung1 = buildAnmeldung(true);
        Schauanmeldung anmeldung2 = buildAnmeldung(true);
        Schauanmeldung anmeldung3 = buildAnmeldung(false); // NE

        when(schauRepository.findById(1L)).thenReturn(Optional.of(schau));
        when(anmeldungRepository.findBySchauIdOrderByKaefigNummerAsc(1L))
                .thenReturn(List.of(anmeldung1, anmeldung2, anmeldung3));
        when(standgeldRepository.findBySchauIdAndZuecherId(eq(1L), eq(10L)))
                .thenReturn(Optional.empty());

        Standgeld gespeichert = buildStandgeld(3, 2);
        when(standgeldRepository.save(any(Standgeld.class))).thenReturn(gespeichert);

        List<StandgeldDTO> result = standgeldService.berechneStandgeldFuerSchau(1L);

        assertThat(result).hasSize(1);
        // 2 eingelieferte Vögel × 2,50 € = 5,00 €
        assertThat(result.get(0).gesamtbetrag()).isEqualByComparingTo("5.00");
        assertThat(result.get(0).anzahlGemeldet()).isEqualTo(3);
        assertThat(result.get(0).anzahlEingeliefert()).isEqualTo(2);
    }

    @Test
    void berechneStandgeldFuerSchau_gibtNurDTOsZurueck() {
        Schauanmeldung anmeldung = buildAnmeldung(true);
        when(schauRepository.findById(1L)).thenReturn(Optional.of(schau));
        when(anmeldungRepository.findBySchauIdOrderByKaefigNummerAsc(1L))
                .thenReturn(List.of(anmeldung));
        when(standgeldRepository.findBySchauIdAndZuecherId(anyLong(), anyLong()))
                .thenReturn(Optional.empty());
        when(standgeldRepository.save(any())).thenReturn(buildStandgeld(1, 1));

        List<StandgeldDTO> result = standgeldService.berechneStandgeldFuerSchau(1L);

        assertThat(result).allSatisfy(dto -> {
            assertThat(dto).isInstanceOf(StandgeldDTO.class);
            assertThat(dto.schauId()).isEqualTo(1L);
            assertThat(dto.zuecherId()).isEqualTo(10L);
            assertThat(dto.zuecherNachname()).isEqualTo("Mustermann");
        });
    }

    @Test
    void berechneStandgeldFuerSchau_aktualisiertBestehendeDatenbankzeile() {
        Schauanmeldung anmeldung = buildAnmeldung(true);
        Standgeld bestehend = new Standgeld();
        bestehend.setId(99L);

        when(schauRepository.findById(1L)).thenReturn(Optional.of(schau));
        when(anmeldungRepository.findBySchauIdOrderByKaefigNummerAsc(1L))
                .thenReturn(List.of(anmeldung));
        when(standgeldRepository.findBySchauIdAndZuecherId(1L, 10L))
                .thenReturn(Optional.of(bestehend));
        when(standgeldRepository.save(any())).thenReturn(buildStandgeld(1, 1));

        standgeldService.berechneStandgeldFuerSchau(1L);

        // Kein neues Objekt anlegen – vorhandenes wird wiederverwendet
        verify(standgeldRepository).save(argThat(sg -> sg.getId() == null || sg.getId() == 99L));
    }

    // ── Hilfsmethoden ────────────────────────────────────────────────────────

    private Schauanmeldung buildAnmeldung(boolean eingeliefert) {
        Schauanmeldung sa = new Schauanmeldung();
        sa.setZuecher(zuecher);
        sa.setSchau(schau);
        sa.setEingeliefert(eingeliefert);
        sa.setKaefigNummer(1);
        return sa;
    }

    private Standgeld buildStandgeld(int gemeldet, int eingeliefert) {
        Standgeld sg = new Standgeld();
        sg.setId(1L);
        sg.setSchau(schau);
        sg.setZuecher(zuecher);
        sg.setAnzahlGemeldet(gemeldet);
        sg.setAnzahlEingeliefert(eingeliefert);
        sg.setStandgeldProVogel(new BigDecimal("2.50"));
        sg.berechnen();
        return sg;
    }
}
