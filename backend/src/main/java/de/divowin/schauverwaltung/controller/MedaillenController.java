package de.divowin.schauverwaltung.controller;

import de.divowin.schauverwaltung.service.MedaillenService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/v1/schauen/{schauId}/medaillen")
@Tag(name = "Medaillen", description = "Medaillenberechnung und -vergabe")
@RequiredArgsConstructor
public class MedaillenController {

    private final MedaillenService medaillenService;

    @PostMapping("/berechnen")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    @Operation(summary = "Medaillen für alle Klassen berechnen")
    public void berechnen(@PathVariable Long schauId) {
        medaillenService.berechneMedaillenFuerSchau(schauId);
    }
}
