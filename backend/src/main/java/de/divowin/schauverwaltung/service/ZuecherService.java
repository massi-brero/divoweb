package de.divowin.schauverwaltung.service;

import de.divowin.schauverwaltung.dto.ZuecherRequestDTO;
import de.divowin.schauverwaltung.dto.ZuecherResponseDTO;
import de.divowin.schauverwaltung.entity.Zuecher;
import de.divowin.schauverwaltung.enums.Verband;
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
public class ZuecherService {

    private final ZuecherRepository zuecherRepository;

    // ── Abfragen ─────────────────────────────────────────────────────────────

    @Transactional(readOnly = true)
    public List<ZuecherResponseDTO> alleZuecher() {
        return zuecherRepository.findAll().stream()
                .map(this::toResponse)
                .toList();
    }

    @Transactional(readOnly = true)
    public ZuecherResponseDTO zuecherById(Long id) {
        return zuecherRepository.findById(id)
                .map(this::toResponse)
                .orElseThrow(() -> new EntityNotFoundException("Züchter nicht gefunden: " + id));
    }

    @Transactional(readOnly = true)
    public List<ZuecherResponseDTO> sucheNachNachname(String nachname) {
        return zuecherRepository
                .findByNachnameContainingIgnoreCaseOrderByNachnameAsc(nachname)
                .stream()
                .map(this::toResponse)
                .toList();
    }

    /**
     * Sucht Züchter anhand der Verbandsnummer.
     * Ist {@code verband} angegeben, wird zusätzlich darauf eingeschränkt
     * (für den Fall, dass Verbandsnummern nicht systemweit eindeutig sind).
     */
    @Transactional(readOnly = true)
    public List<ZuecherResponseDTO> sucheNachVerbandsnummer(String verbandsnummer, Verband verband) {
        List<Zuecher> treffer = (verband != null)
                ? zuecherRepository.findByVerbandsnummerAndVerband(verbandsnummer, verband)
                        .map(List::of)
                        .orElse(List.of())
                : zuecherRepository.findByVerbandsnummer(verbandsnummer);

        return treffer.stream()
                .map(this::toResponse)
                .toList();
    }

    // ── Mutationen ───────────────────────────────────────────────────────────

    @Transactional
    public ZuecherResponseDTO anlegen(ZuecherRequestDTO dto) {
        log.info("Neuen Züchter anlegen: {} {}", dto.vorname(), dto.nachname());
        return toResponse(zuecherRepository.save(toEntity(dto)));
    }

    @Transactional
    public ZuecherResponseDTO aktualisieren(Long id, ZuecherRequestDTO dto) {
        Zuecher zuecher = zuecherRepository.findById(id)
                .orElseThrow(() -> new EntityNotFoundException("Züchter nicht gefunden: " + id));
        applyUpdate(zuecher, dto);
        return toResponse(zuecherRepository.save(zuecher));
    }

    // ── Mapping ──────────────────────────────────────────────────────────────

    private ZuecherResponseDTO toResponse(Zuecher z) {
        return new ZuecherResponseDTO(
                z.getId(),
                z.getVerbandsnummer(),
                z.getVerband(),
                z.getNachname(),
                z.getVorname(),
                z.getVollname(),
                z.getStrasse(),
                z.getPlz(),
                z.getWohnort(),
                z.getLand(),
                z.getTelefon(),
                z.isKatalogEinverstaendnis()
        );
    }

    private Zuecher toEntity(ZuecherRequestDTO dto) {
        Zuecher zuecher = new Zuecher();
        applyUpdate(zuecher, dto);
        return zuecher;
    }

    private void applyUpdate(Zuecher zuecher, ZuecherRequestDTO dto) {
        zuecher.setVerbandsnummer(dto.verbandsnummer());
        zuecher.setVerband(dto.verband());
        zuecher.setNachname(dto.nachname());
        zuecher.setVorname(dto.vorname());
        zuecher.setStrasse(dto.strasse());
        zuecher.setPlz(dto.plz());
        zuecher.setWohnort(dto.wohnort());
        zuecher.setLand(dto.land());
        zuecher.setTelefon(dto.telefon());
        zuecher.setKatalogEinverstaendnis(dto.katalogEinverstaendnis());
    }
}
