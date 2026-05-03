package de.divowin.schauverwaltung.controller;

import de.divowin.schauverwaltung.dto.SiegerRequestDTO;
import de.divowin.schauverwaltung.dto.SiegerResponseDTO;
import de.divowin.schauverwaltung.service.SiegerService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/v1/schauen/{schauId}/sieger")
@Tag(name = "Siegerliste", description = "Sieger- und Ehrenliste")
@RequiredArgsConstructor
public class SiegerController {

    private final SiegerService siegerService;

    @GetMapping
    @Operation(summary = "Siegerliste einer Schau")
    public List<SiegerResponseDTO> siegerListe(@PathVariable Long schauId) {
        return siegerService.siegerListe(schauId);
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    @Operation(summary = "Sieger eintragen")
    public SiegerResponseDTO eintragen(@PathVariable Long schauId,
                                        @Valid @RequestBody SiegerRequestDTO dto) {
        return siegerService.eintragen(schauId, dto);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    @Operation(summary = "Sieger löschen")
    public void loeschen(@PathVariable Long schauId, @PathVariable Long id) {
        siegerService.loeschen(schauId, id);
    }
}
