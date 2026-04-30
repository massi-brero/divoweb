package de.divowin.schauverwaltung.service;

import de.divowin.schauverwaltung.dto.SiegerRequestDTO;
import de.divowin.schauverwaltung.dto.SiegerResponseDTO;
import de.divowin.schauverwaltung.entity.Sieger;
import de.divowin.schauverwaltung.repository.SchauRepository;
import de.divowin.schauverwaltung.repository.SchauanmeldungRepository;
import de.divowin.schauverwaltung.repository.SiegerRepository;
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
public class SiegerService {

    private final SiegerRepository         siegerRepository;
    private final SchauRepository          schauRepository;
    private final ZuecherRepository        zuecherRepository;
    private final SchauanmeldungRepository anmeldungRepository;

    // ── Abfragen ─────────────────────────────────────────────────────────────

    @Transactional(readOnly = true)
    public List<SiegerResponseDTO> siegerListe(Long schauId) {
        return siegerRepository.findBySchauIdOrderByKategorieAscPositionAsc(schauId)
                .stream()
                .map(this::toResponse)
                .toList();
    }

    // ── Mutationen ───────────────────────────────────────────────────────────

    @Transactional
    public SiegerResponseDTO eintragen(Long schauId, SiegerRequestDTO dto) {
        var schau   = schauRepository.findById(schauId)
                .orElseThrow(() -> new EntityNotFoundException("Schau nicht gefunden: " + schauId));
        var zuecher = zuecherRepository.findById(dto.zuecherId())
                .orElseThrow(() -> new EntityNotFoundException("Züchter nicht gefunden: " + dto.zuecherId()));

        var sieger = new Sieger();
        sieger.setSchau(schau);
        sieger.setZuecher(zuecher);
        sieger.setKategorie(dto.kategorie());
        sieger.setPosition(dto.position());
        sieger.setBeschreibung(dto.beschreibung());
        sieger.setManuellEingetragen(dto.manuellEingetragen());

        if (dto.anmeldungId() != null) {
            var anmeldung = anmeldungRepository.findById(dto.anmeldungId())
                    .orElseThrow(() -> new EntityNotFoundException(
                            "Anmeldung nicht gefunden: " + dto.anmeldungId()));
            sieger.setAnmeldung(anmeldung);
        }

        log.info("Sieger eingetragen: Schau {} Kategorie '{}' Züchter {}",
                schauId, dto.kategorie(), zuecher.getVollname());

        return toResponse(siegerRepository.save(sieger));
    }

    @Transactional
    public void loeschen(Long schauId, Long id) {
        var sieger = siegerRepository.findById(id)
                .orElseThrow(() -> new EntityNotFoundException("Sieger nicht gefunden: " + id));
        // Sicherheitsprüfung: Sieger muss zur angegebenen Schau gehören
        if (!sieger.getSchau().getId().equals(schauId)) {
            throw new IllegalArgumentException(
                    "Sieger %d gehört nicht zu Schau %d".formatted(id, schauId));
        }
        siegerRepository.deleteById(id);
    }

    // ── Mapping ──────────────────────────────────────────────────────────────

    private SiegerResponseDTO toResponse(Sieger s) {
        Integer kaefigNummer      = s.getAnmeldung() != null ? s.getAnmeldung().getKaefigNummer() : null;
        String  klassenschluessel = s.getAnmeldung() != null
                ? s.getAnmeldung().getVogelklasse().getKlassenschluessel()
                : null;

        return new SiegerResponseDTO(
                s.getId(),
                s.getKategorie(),
                s.getPosition(),
                s.getZuecher().getId(),
                s.getZuecher().getNachname(),
                s.getZuecher().getVorname(),
                kaefigNummer,
                klassenschluessel,
                s.getBeschreibung(),
                s.isManuellEingetragen()
        );
    }
}
