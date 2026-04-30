package de.divowin.schauverwaltung.controller;

import de.divowin.schauverwaltung.dto.SchauDTO;
import de.divowin.schauverwaltung.dto.SchauRequestDTO;
import de.divowin.schauverwaltung.entity.Schau;
import de.divowin.schauverwaltung.service.SchauService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/v1/schauen")
@Tag(name = "Schauen", description = "Verwaltung von Vogelschauen")
@RequiredArgsConstructor
public class SchauController {

    private final SchauService schauService;

    @GetMapping
    @Operation(summary = "Alle Schauen abrufen")
    public List<SchauDTO> alleSchauen() {
        return schauService.alleSchauen();
    }

    @GetMapping("/jahr/{jahr}")
    @Operation(summary = "Schauen nach Jahrgang")
    public List<SchauDTO> schauenNachJahr(@PathVariable int jahr) {
        return schauService.schauenNachJahr(jahr);
    }

    @GetMapping("/{id}")
    @Operation(summary = "Einzelne Schau mit Richtern")
    public SchauDTO schauById(@PathVariable Long id) {
        return schauService.schauById(id);
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    @Operation(summary = "Neue Schau anlegen")
    public SchauDTO schauAnlegen(@Valid @RequestBody SchauRequestDTO dto) {
        return schauService.schauAnlegen(dto);
    }

    @PatchMapping("/{id}/status/{status}")
    @Operation(summary = "Schaustatus ändern")
    public SchauDTO statusAendern(@PathVariable Long id,
                                   @PathVariable Schau.Schaustatus status) {
        return schauService.statusAendern(id, status);
    }
}
