package de.divowin.schauverwaltung.service;

import de.divowin.schauverwaltung.dto.RichterDTO;
import de.divowin.schauverwaltung.dto.SchauDTO;
import de.divowin.schauverwaltung.dto.SchauRequestDTO;
import de.divowin.schauverwaltung.entity.Richter;
import de.divowin.schauverwaltung.entity.Schau;
import de.divowin.schauverwaltung.repository.SchauRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Slf4j
@Service
@RequiredArgsConstructor
public class SchauService {

    private final SchauRepository schauRepository;

    @Transactional(readOnly = true)
    public List<SchauDTO> alleSchauen() {
        return schauRepository.findAll().stream()
                .map(this::toDTOOhneRichter)
                .collect(Collectors.toList());
    }

    @Transactional(readOnly = true)
    public List<SchauDTO> schauenNachJahr(int jahr) {
        return schauRepository.findByJahrOrderBySchautypAsc(jahr).stream()
                .map(this::toDTOOhneRichter)
                .collect(Collectors.toList());
    }

    @Transactional(readOnly = true)
    public SchauDTO schauById(Long id) {
        Schau schau = schauRepository.findByIdWithRichter(id)
                .orElseThrow(() -> new IllegalArgumentException("Schau nicht gefunden: " + id));
        return toDTO(schau);
    }

    @Transactional
    public SchauDTO schauAnlegen(SchauRequestDTO dto) {
        Schau schau = new Schau();
        schau.setSchautyp(dto.schautyp());
        schau.setJahr(dto.jahr());
        schau.setOrt(dto.ort());
        schau.setVerband(dto.verband());
        schau.setStandgeldProVogel(dto.standgeldProVogel());
        schau.setNotizen(dto.notizen());
        log.info("Neue Schau anlegen: {}", schau.getBezeichnung());
        return toDTOOhneRichter(schauRepository.save(schau));
    }

    @Transactional
    public SchauDTO statusAendern(Long id, Schau.Schaustatus neuerStatus) {
        Schau schau = schauRepository.findByIdWithRichter(id)
                .orElseThrow(() -> new IllegalArgumentException("Schau nicht gefunden: " + id));
        log.info("Schau {} Status: {} → {}", schau.getBezeichnung(), schau.getStatus(), neuerStatus);
        schau.setStatus(neuerStatus);
        return toDTO(schauRepository.save(schau));
    }

    // ── Mapper ──────────────────────────────────────────────────────────────

    /**
     * Vollständiges Mapping inklusive Richter-Liste.
     * Setzt voraus, dass die Richter innerhalb der laufenden Transaktion geladen wurden
     * (z.B. via {@code findByIdWithRichter}).
     */
    private SchauDTO toDTO(Schau schau) {
        List<RichterDTO> richterDTOs = schau.getRichter().stream()
                .map(this::richterToDTO)
                .collect(Collectors.toList());
        return new SchauDTO(
                schau.getId(),
                schau.getSchautyp(),
                schau.getJahr(),
                schau.getOrt(),
                schau.getVerband(),
                schau.getStandgeldProVogel(),
                schau.getStatus(),
                schau.getNotizen(),
                schau.getBezeichnung(),
                richterDTOs
        );
    }

    /**
     * Mapping ohne Richter-Liste – für Listenabfragen, bei denen die Richter
     * nicht per JOIN FETCH geladen wurden.
     */
    private SchauDTO toDTOOhneRichter(Schau schau) {
        return new SchauDTO(
                schau.getId(),
                schau.getSchautyp(),
                schau.getJahr(),
                schau.getOrt(),
                schau.getVerband(),
                schau.getStandgeldProVogel(),
                schau.getStatus(),
                schau.getNotizen(),
                schau.getBezeichnung(),
                List.of()
        );
    }

    private RichterDTO richterToDTO(Richter richter) {
        return new RichterDTO(
                richter.getId(),
                richter.getPosition(),
                richter.getNachname(),
                richter.getVorname(),
                richter.getVollname()
        );
    }
}
