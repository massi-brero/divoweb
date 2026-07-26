package de.divowin.schauverwaltung.service;

import de.divowin.schauverwaltung.dto.VogelklasseResponseDTO;
import de.divowin.schauverwaltung.entity.Vogelklasse;
import de.divowin.schauverwaltung.repository.VogelklasseRepository;
import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.stream.Collectors;
import java.util.stream.Stream;

@Slf4j
@Service
@RequiredArgsConstructor
public class VogelklasseService {

    private final VogelklasseRepository vogelklasseRepository;

    /**
     * Ermittelt die Vogelklasse anhand des 3-teiligen Schauklassenschlüssels
     * (Skl1/Skl2/Skl3), analog zum Ablauf in der Altanwendung.
     */
    @Transactional(readOnly = true)
    public VogelklasseResponseDTO lookup(String skl1, String skl2, String skl3) {
        return vogelklasseRepository.lookup(skl1, skl2, skl3)
                .map(this::toResponse)
                .orElseThrow(() -> new EntityNotFoundException(
                        "Für den Schauklassenschlüssel %s wurde keine Vogelklasse gefunden."
                                .formatted(schluesselAnzeige(skl1, skl2, skl3))));
    }

    private String schluesselAnzeige(String skl1, String skl2, String skl3) {
        return Stream.of(skl1, skl2, skl3)
                .filter(s -> s != null && !s.isBlank())
                .collect(Collectors.joining("/"));
    }

    private VogelklasseResponseDTO toResponse(Vogelklasse v) {
        return new VogelklasseResponseDTO(
                v.getId(),
                v.getSkl1(),
                v.getSkl2(),
                v.getSkl3(),
                v.getKlassenschluessel(),
                v.getFarbbezeichnung()
        );
    }
}
