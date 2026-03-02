package de.divowin.schauverwaltung.service;

import de.divowin.schauverwaltung.entity.*;
import de.divowin.schauverwaltung.repository.*;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * Berechnet das Standgeld pro Züchter für eine Schau.
 *
 * Regelung aus der Altanwendung:
 * - Pro eingeliefertem Vogel wird Standgeld fällig
 * - NE (nicht eingeliefert) Vögel werden nicht berechnet
 * - Satz aus Zuri.db (Feld StandGeld), typisch 2,50–3,00 €
 */
@Slf4j
@Service
@RequiredArgsConstructor
public class StandgeldService {

    private final SchauRepository schauRepository;
    private final SchauanmeldungRepository anmeldungRepository;
    private final StandgeldRepository standgeldRepository;

    @Transactional
    public List<Standgeld> berechneStandgeldFuerSchau(Long schauId) {
        Schau schau = schauRepository.findById(schauId)
            .orElseThrow(() -> new IllegalArgumentException("Schau nicht gefunden: " + schauId));

        List<Schauanmeldung> anmeldungen = anmeldungRepository
            .findBySchauIdOrderByKaefigNummerAsc(schauId);

        // Gruppieren nach Züchter
        Map<Long, List<Schauanmeldung>> nachZuecher = anmeldungen.stream()
            .collect(Collectors.groupingBy(sa -> sa.getZuecher().getId()));

        List<Standgeld> ergebnisse = nachZuecher.entrySet().stream().map(eintrag -> {
            List<Schauanmeldung> zuecherAnmeldungen = eintrag.getValue();
            Zuecher zuecher = zuecherAnmeldungen.get(0).getZuecher();

            int gemeldet = zuecherAnmeldungen.size();
            int eingeliefert = (int) zuecherAnmeldungen.stream()
                .filter(Schauanmeldung::isEingeliefert)
                .count();

            Standgeld standgeld = standgeldRepository
                .findBySchauIdAndZuecherId(schauId, zuecher.getId())
                .orElse(new Standgeld());

            standgeld.setSchau(schau);
            standgeld.setZuecher(zuecher);
            standgeld.setAnzahlGemeldet(gemeldet);
            standgeld.setAnzahlEingeliefert(eingeliefert);
            standgeld.setStandgeldProVogel(schau.getStandgeldProVogel());
            standgeld.berechnen();

            return standgeldRepository.save(standgeld);
        }).collect(Collectors.toList());

        log.info("Standgeld berechnet für Schau {} – {} Züchter", schauId, ergebnisse.size());
        return ergebnisse;
    }
}
