package de.divowin.schauverwaltung.service;

import de.divowin.schauverwaltung.dto.PlatzierungResponseDTO;
import de.divowin.schauverwaltung.dto.SchauanmeldungRequestDTO;
import de.divowin.schauverwaltung.dto.SchauanmeldungResponseDTO;
import de.divowin.schauverwaltung.entity.Schauanmeldung;
import de.divowin.schauverwaltung.repository.SchauRepository;
import de.divowin.schauverwaltung.repository.SchauanmeldungRepository;
import de.divowin.schauverwaltung.repository.VogelklasseRepository;
import de.divowin.schauverwaltung.repository.ZuecherRepository;
import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Slf4j
@Service
@RequiredArgsConstructor
public class SchauanmeldungService {

    private final SchauanmeldungRepository anmeldungRepository;
    private final SchauRepository          schauRepository;
    private final ZuecherRepository        zuecherRepository;
    private final VogelklasseRepository    vogelklasseRepository;

    // ── Abfragen ─────────────────────────────────────────────────────────────

    @Transactional(readOnly = true)
    public List<SchauanmeldungResponseDTO> alleAnmeldungen(Long schauId) {
        return anmeldungRepository.findBySchauIdOrderByKaefigNummerAsc(schauId)
                .stream()
                .map(this::toResponse)
                .toList();
    }

    @Transactional(readOnly = true)
    public List<SchauanmeldungResponseDTO> nichtPlatzierte(Long schauId) {
        return anmeldungRepository.findNichtPlatzierte(schauId)
                .stream()
                .map(this::toResponse)
                .toList();
    }

    @Transactional(readOnly = true)
    public Integer naechsteKaefigNummer(Long schauId) {
        return anmeldungRepository.naechsteKaefigNummer(schauId);
    }

    @Transactional(readOnly = true)
    public SchauanmeldungResponseDTO byKaefigNummer(Long schauId, Integer kaefigNummer) {
        return anmeldungRepository.findBySchauIdAndKaefigNummer(schauId, kaefigNummer)
                .map(this::toResponse)
                .orElseThrow(() -> new EntityNotFoundException(
                        "Käfig %d in Schau %d nicht gefunden".formatted(kaefigNummer, schauId)));
    }

    // ── Mutationen ───────────────────────────────────────────────────────────

    @Transactional
    public SchauanmeldungResponseDTO anmelden(Long schauId, SchauanmeldungRequestDTO dto) {
        var schau       = schauRepository.findById(schauId)
                .orElseThrow(() -> new EntityNotFoundException("Schau nicht gefunden: " + schauId));
        var zuecher     = zuecherRepository.findById(dto.zuecherId())
                .orElseThrow(() -> new EntityNotFoundException("Züchter nicht gefunden: " + dto.zuecherId()));
        var vogelklasse = vogelklasseRepository.findById(dto.vogelklasseId())
                .orElseThrow(() -> new EntityNotFoundException("Vogelklasse nicht gefunden: " + dto.vogelklasseId()));

        var anmeldung = new Schauanmeldung();
        anmeldung.setSchau(schau);
        anmeldung.setZuecher(zuecher);
        anmeldung.setVogelklasse(vogelklasse);
        anmeldung.setGeschlecht(dto.geschlecht());
        anmeldung.setRingNummer(dto.ringNummer());
        anmeldung.setZuchtjahr(dto.zuchtjahr());
        // kaefigNummer automatisch vergeben
        anmeldung.setKaefigNummer(anmeldungRepository.naechsteKaefigNummer(schauId));

        log.info("Vogel angemeldet: Schau {} Käfig {} Züchter {} Klasse {}",
                schauId, anmeldung.getKaefigNummer(), zuecher.getVollname(),
                vogelklasse.getKlassenschluessel());

        return toResponse(anmeldungRepository.save(anmeldung));
    }

    @Transactional
    public PlatzierungResponseDTO platzierungEingeben(Long schauId, Integer kaefigNummer, Integer platz) {
        var anmeldung = anmeldungRepository.findBySchauIdAndKaefigNummer(schauId, kaefigNummer)
                .orElseThrow(() -> new EntityNotFoundException(
                        "Käfig %d in Schau %d nicht gefunden".formatted(kaefigNummer, schauId)));
        anmeldung.setPlatzierung(platz);
        var gespeichert = anmeldungRepository.save(anmeldung);
        return new PlatzierungResponseDTO(
                gespeichert.getId(),
                gespeichert.getKaefigNummer(),
                gespeichert.getPlatzierung(),
                gespeichert.getMedaille()
        );
    }

    // ── Mapping ──────────────────────────────────────────────────────────────

    private SchauanmeldungResponseDTO toResponse(Schauanmeldung a) {
        return new SchauanmeldungResponseDTO(
                a.getId(),
                a.getKaefigNummer(),
                a.getZuecher().getId(),
                a.getZuecher().getNachname(),
                a.getZuecher().getVorname(),
                a.getZuecher().getVerbandsnummer(),
                a.getVogelklasse().getKlassenschluessel(),
                a.getVogelklasse().getFarbbezeichnung(),
                a.getGeschlecht(),
                a.getRingNummer(),
                a.getZuchtjahr(),
                a.isEingeliefert(),
                a.getPlatzierung(),
                a.getPlatzierungskennzeichen(),
                a.getMedaille(),
                a.getAnzahlVoegelInKlasse(),
                a.getAnzahlZuecherInKlasse()
        );
    }
}
