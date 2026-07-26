package de.divowin.schauverwaltung.controller;

import de.divowin.schauverwaltung.dto.VogelklasseResponseDTO;
import de.divowin.schauverwaltung.service.VogelklasseService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/v1/vogelklassen")
@Tag(name = "Vogelklassen", description = "Vogel-/Farbklassen-Stammdaten")
@RequiredArgsConstructor
public class VogelklasseController {

    private final VogelklasseService vogelklasseService;

    @GetMapping("/lookup")
    @Operation(summary = "Vogelklasse anhand des 3-teiligen Schauklassenschlüssels ermitteln")
    public VogelklasseResponseDTO lookup(
            @RequestParam String skl1,
            @RequestParam(required = false) String skl2,
            @RequestParam(required = false) String skl3) {
        return vogelklasseService.lookup(skl1, skl2, skl3);   // 404 via GlobalExceptionHandler
    }
}
