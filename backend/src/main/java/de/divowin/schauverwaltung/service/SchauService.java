package de.divowin.schauverwaltung.service;

import de.divowin.schauverwaltung.entity.Schau;
import de.divowin.schauverwaltung.repository.SchauRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Slf4j
@Service
@RequiredArgsConstructor
public class SchauService {

    private final SchauRepository schauRepository;

    @Transactional(readOnly = true)
    public List<Schau> alleSchauen() {
        return schauRepository.findAll();
    }

    @Transactional(readOnly = true)
    public List<Schau> schauenNachJahr(int jahr) {
        return schauRepository.findByJahrOrderBySchautypAsc(jahr);
    }

    @Transactional(readOnly = true)
    public Schau schauById(Long id) {
        return schauRepository.findByIdWithRichter(id)
            .orElseThrow(() -> new IllegalArgumentException("Schau nicht gefunden: " + id));
    }

    @Transactional
    public Schau schauAnlegen(Schau schau) {
        log.info("Neue Schau anlegen: {}", schau.getBezeichnung());
        return schauRepository.save(schau);
    }

    @Transactional
    public Schau statusAendern(Long id, Schau.Schaustatus neuerStatus) {
        Schau schau = schauById(id);
        log.info("Schau {} Status: {} → {}", schau.getBezeichnung(), schau.getStatus(), neuerStatus);
        schau.setStatus(neuerStatus);
        return schauRepository.save(schau);
    }
}
