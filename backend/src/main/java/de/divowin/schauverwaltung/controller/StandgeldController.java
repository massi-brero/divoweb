package de.divowin.schauverwaltung.controller;

import de.divowin.schauverwaltung.dto.StandgeldDTO;
import de.divowin.schauverwaltung.service.StandgeldService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/v1/schauen/{schauId}/standgeld")
@Tag(name = "Standgeld", description = "Standgeld-Abrechnung pro Züchter")
@RequiredArgsConstructor
public class StandgeldController {

    private final StandgeldService standgeldService;

    @GetMapping
    @Operation(summary = "Standgeld-Übersicht für Schau")
    public List<StandgeldDTO> uebersicht(@PathVariable Long schauId) {
        return standgeldService.uebersichtFuerSchau(schauId);
    }

    @PostMapping("/berechnen")
    @Operation(summary = "Standgeld neu berechnen")
    public List<StandgeldDTO> berechnen(@PathVariable Long schauId) {
        return standgeldService.berechneStandgeldFuerSchau(schauId);
    }
}
