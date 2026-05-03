package de.divowin.schauverwaltung.service;

import de.divowin.schauverwaltung.entity.Schauanmeldung;
import de.divowin.schauverwaltung.enums.Medaille;
import de.divowin.schauverwaltung.enums.Platzierungskennzeichen;
import de.divowin.schauverwaltung.repository.SchauanmeldungRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * Implementiert die Medaillen-Vergaberegeln aus der Altanwendung.
 *
 * Regeln:
 *   Gold:   >= 7 Vögel aus >= 2 Züchtern in der Klasse → platzierte Vögel erhalten Gold
 *   Silber: >= 5 Vögel aus >= 2 Züchtern → platzierte Vögel erhalten Silber
 *   Bronze: >= 3 Vögel aus >= 2 Züchtern → platzierte Vögel erhalten Bronze
 *   Keine:  Weniger als 3 Vögel oder nur 1 Züchter
 *
 * NE (nicht eingeliefert) und FK (falsche Klasse) werden nicht gewertet.
 */
@Slf4j
@Service
@RequiredArgsConstructor
public class MedaillenService {

    private final SchauanmeldungRepository anmeldungRepository;

    /**
     * Berechnet und setzt die Medaillen für alle Klassen einer Schau.
     */
    @Transactional
    public void berechneMedaillenFuerSchau(Long schauId) {
        List<Schauanmeldung> alleAnmeldungen = anmeldungRepository
            .findBySchauIdOrderByKaefigNummerAsc(schauId);

        // Gruppieren nach Vogelklasse
        Map<Long, List<Schauanmeldung>> nachKlasse = alleAnmeldungen.stream()
            .filter(sa -> sa.getPlatzierungskennzeichen() == Platzierungskennzeichen.NORMAL)
            .filter(Schauanmeldung::isEingeliefert)
            .collect(Collectors.groupingBy(sa -> sa.getVogelklasse().getId()));

        for (Map.Entry<Long, List<Schauanmeldung>> eintrag : nachKlasse.entrySet()) {
            berechneMedaillenFuerKlasse(eintrag.getValue());
        }

        log.info("Medaillenberechnung abgeschlossen für Schau {} – {} Klassen verarbeitet",
            schauId, nachKlasse.size());
    }

    /**
     * Berechnet die Medaille für eine einzelne Klasse.
     */
    private void berechneMedaillenFuerKlasse(List<Schauanmeldung> klasseAnmeldungen) {
        int anzahlVoegel = klasseAnmeldungen.size();
        long anzahlZuechter = klasseAnmeldungen.stream()
            .map(sa -> sa.getZuecher().getId())
            .distinct()
            .count();

        Medaille medaille = Medaille.berechnen(anzahlVoegel, (int) anzahlZuechter);

        // Statistik-Felder in jedem Datensatz aktualisieren
        for (Schauanmeldung anmeldung : klasseAnmeldungen) {
            anmeldung.setAnzahlVoegelInKlasse(anzahlVoegel);
            anmeldung.setAnzahlZuecherInKlasse((int) anzahlZuechter);

            // Medaille nur für platzierte Vögel setzen
            if (anmeldung.getPlatzierung() != null) {
                anmeldung.setMedaille(medaille);
            } else {
                anmeldung.setMedaille(Medaille.KEINE);
            }
        }

        if (medaille != Medaille.KEINE) {
            String klassenschluessel = klasseAnmeldungen.get(0).getVogelklasse().getKlassenschluessel();
            log.debug("Klasse {}: {} Vögel, {} Züchter → {}",
                klassenschluessel, anzahlVoegel, anzahlZuechter, medaille);
        }
    }

    /**
     * Prüft ob eine Klasse Medaillen-berechtigt ist (für Anzeige in der UI).
     */
    public Medaille berechneVorschau(int anzahlVoegel, int anzahlZuechter) {
        return Medaille.berechnen(anzahlVoegel, anzahlZuechter);
    }
}
