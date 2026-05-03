package de.divowin.schauverwaltung.service;

import de.divowin.schauverwaltung.entity.*;
import de.divowin.schauverwaltung.enums.*;
import de.divowin.schauverwaltung.repository.SchauanmeldungRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.ArrayList;
import java.util.List;

import static org.assertj.core.api.Assertions.*;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
class MedaillenServiceTest {

    @Mock SchauanmeldungRepository anmeldungRepository;
    @InjectMocks MedaillenService medaillenService;

    private Vogelklasse vogelklasse;

    @BeforeEach
    void setUp() {
        vogelklasse = new Vogelklasse();
        vogelklasse.setId(5L);
        vogelklasse.setSkl1("WP");
        vogelklasse.setSkl2("GR");
        vogelklasse.setFarbe1("Grau");
    }

    // ── berechneMedaillenFuerSchau ────────────────────────────────────────────

    @Test
    void berechnen_setzt_goldFuerSiebenUndMehrVoegel() {
        List<Schauanmeldung> anmeldungen = erstelleAnmeldungen(7, true);
        when(anmeldungRepository.findBySchauIdOrderByKaefigNummerAsc(1L))
                .thenReturn(anmeldungen);

        medaillenService.berechneMedaillenFuerSchau(1L);

        // Alle platzierten Vögel bekommen Gold
        anmeldungen.stream()
                .filter(a -> a.getPlatzierung() != null)
                .forEach(a -> assertThat(a.getMedaille()).isEqualTo(Medaille.GOLD));
    }

    @Test
    void berechnen_setzt_silberFuerFuenfBisSechsVoegel() {
        List<Schauanmeldung> anmeldungen = erstelleAnmeldungen(5, true);
        when(anmeldungRepository.findBySchauIdOrderByKaefigNummerAsc(1L))
                .thenReturn(anmeldungen);

        medaillenService.berechneMedaillenFuerSchau(1L);

        anmeldungen.stream()
                .filter(a -> a.getPlatzierung() != null)
                .forEach(a -> assertThat(a.getMedaille()).isEqualTo(Medaille.SILBER));
    }

    @Test
    void berechnen_setzt_bronzeFuerDreiBisVierVoegel() {
        List<Schauanmeldung> anmeldungen = erstelleAnmeldungen(3, true);
        when(anmeldungRepository.findBySchauIdOrderByKaefigNummerAsc(1L))
                .thenReturn(anmeldungen);

        medaillenService.berechneMedaillenFuerSchau(1L);

        anmeldungen.stream()
                .filter(a -> a.getPlatzierung() != null)
                .forEach(a -> assertThat(a.getMedaille()).isEqualTo(Medaille.BRONZE));
    }

    @Test
    void berechnen_setzt_keineMedaille_beiWenigerAlsDreiVoegeln() {
        List<Schauanmeldung> anmeldungen = erstelleAnmeldungen(2, true);
        when(anmeldungRepository.findBySchauIdOrderByKaefigNummerAsc(1L))
                .thenReturn(anmeldungen);

        medaillenService.berechneMedaillenFuerSchau(1L);

        anmeldungen.forEach(a -> assertThat(a.getMedaille()).isEqualTo(Medaille.KEINE));
    }

    @Test
    void berechnen_setzt_keineMedaille_beiNurEinemZuecher() {
        // 7 Vögel aber alle vom selben Züchter
        List<Schauanmeldung> anmeldungen = erstelleAnmeldungen(7, false);
        when(anmeldungRepository.findBySchauIdOrderByKaefigNummerAsc(1L))
                .thenReturn(anmeldungen);

        medaillenService.berechneMedaillenFuerSchau(1L);

        anmeldungen.forEach(a -> assertThat(a.getMedaille()).isEqualTo(Medaille.KEINE));
    }

    @Test
    void berechnen_setzt_keineStatistik_beiNEVoegeln() {
        Schauanmeldung neVogel = new Schauanmeldung();
        neVogel.setId(1L);
        neVogel.setVogelklasse(vogelklasse);
        neVogel.setEingeliefert(false);
        neVogel.setPlatzierungskennzeichen(Platzierungskennzeichen.NICHT_EINGELIEFERT);
        neVogel.setMedaille(Medaille.KEINE);
        neVogel.setZuecher(zuecher(1L));
        neVogel.setKaefigNummer(1);
        neVogel.setGeschlecht(Geschlecht.MAENNLICH);

        when(anmeldungRepository.findBySchauIdOrderByKaefigNummerAsc(1L))
                .thenReturn(List.of(neVogel));

        medaillenService.berechneMedaillenFuerSchau(1L);

        // NE-Vögel werden herausgefiltert, bleiben auf KEINE
        assertThat(neVogel.getMedaille()).isEqualTo(Medaille.KEINE);
    }

    @Test
    void berechnen_setzt_keinemedailleFuerNichtPlatzierteVoegel() {
        List<Schauanmeldung> anmeldungen = erstelleAnmeldungen(7, true);
        // Ersten Vogel ohne Platzierung
        anmeldungen.get(0).setPlatzierung(null);
        when(anmeldungRepository.findBySchauIdOrderByKaefigNummerAsc(1L))
                .thenReturn(anmeldungen);

        medaillenService.berechneMedaillenFuerSchau(1L);

        assertThat(anmeldungen.get(0).getMedaille()).isEqualTo(Medaille.KEINE);
        // Platzierte bekommen Gold
        anmeldungen.stream()
                .filter(a -> a.getPlatzierung() != null)
                .forEach(a -> assertThat(a.getMedaille()).isEqualTo(Medaille.GOLD));
    }

    @Test
    void berechnen_aktualiesiertAnzahlFelderInAnmeldung() {
        List<Schauanmeldung> anmeldungen = erstelleAnmeldungen(5, true);
        when(anmeldungRepository.findBySchauIdOrderByKaefigNummerAsc(1L))
                .thenReturn(anmeldungen);

        medaillenService.berechneMedaillenFuerSchau(1L);

        anmeldungen.forEach(a -> {
            assertThat(a.getAnzahlVoegelInKlasse()).isEqualTo(5);
            assertThat(a.getAnzahlZuecherInKlasse()).isEqualTo(5); // jeder Vogel ein anderer Züchter
        });
    }

    // ── berechneVorschau ─────────────────────────────────────────────────────

    @Test
    void berechneVorschau_gibtKorrektesMedaillenResultat() {
        assertThat(medaillenService.berechneVorschau(7, 2)).isEqualTo(Medaille.GOLD);
        assertThat(medaillenService.berechneVorschau(5, 2)).isEqualTo(Medaille.SILBER);
        assertThat(medaillenService.berechneVorschau(3, 2)).isEqualTo(Medaille.BRONZE);
        assertThat(medaillenService.berechneVorschau(2, 2)).isEqualTo(Medaille.KEINE);
        assertThat(medaillenService.berechneVorschau(10, 1)).isEqualTo(Medaille.KEINE);
    }

    // ── Hilfsmethoden ────────────────────────────────────────────────────────

    /**
     * Erstellt n Anmeldungen für eine Klasse.
     * @param mehrereZuecher true = jeder Vogel ein anderer Züchter; false = alle Züchter gleich
     */
    private List<Schauanmeldung> erstelleAnmeldungen(int anzahl, boolean mehrereZuecher) {
        List<Schauanmeldung> liste = new ArrayList<>();
        for (int i = 1; i <= anzahl; i++) {
            Schauanmeldung a = new Schauanmeldung();
            a.setId((long) i);
            a.setVogelklasse(vogelklasse);
            a.setEingeliefert(true);
            a.setPlatzierungskennzeichen(Platzierungskennzeichen.NORMAL);
            a.setPlatzierung(i <= 4 ? i : null); // erste 4 platziert
            a.setMedaille(Medaille.KEINE);
            a.setZuecher(zuecher(mehrereZuecher ? (long) i : 1L));
            a.setKaefigNummer(i);
            a.setGeschlecht(Geschlecht.MAENNLICH);
            liste.add(a);
        }
        return liste;
    }

    private Zuecher zuecher(Long id) {
        Zuecher z = new Zuecher();
        z.setId(id);
        z.setNachname("Züchter" + id);
        z.setVerbandsnummer(String.valueOf(id));
        return z;
    }
}
