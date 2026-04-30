package de.divowin.schauverwaltung.controller;

import de.divowin.schauverwaltung.dto.ZuecherRequestDTO;
import de.divowin.schauverwaltung.dto.ZuecherResponseDTO;
import de.divowin.schauverwaltung.service.ZuecherService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/v1/zuecher")
@Tag(name = "Züchter", description = "Züchter-/Ausstellerverwaltung")
@RequiredArgsConstructor
public class ZuecherController {

    private final ZuecherService zuecherService;

    @GetMapping
    @Operation(summary = "Alle Züchter abrufen")
    public List<ZuecherResponseDTO> alle() {
        return zuecherService.alleZuecher();
    }

    @GetMapping("/{id}")
    @Operation(summary = "Einzelnen Züchter abrufen")
    public ZuecherResponseDTO byId(@PathVariable Long id) {
        return zuecherService.zuecherById(id);      // 404 via GlobalExceptionHandler
    }

    @GetMapping("/suche")
    @Operation(summary = "Züchter nach Nachname suchen")
    public List<ZuecherResponseDTO> suche(@RequestParam String name) {
        return zuecherService.sucheNachNachname(name);
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    @Operation(summary = "Züchter anlegen")
    public ZuecherResponseDTO anlegen(@Valid @RequestBody ZuecherRequestDTO dto) {
        return zuecherService.anlegen(dto);
    }

    @PutMapping("/{id}")
    @Operation(summary = "Züchter vollständig aktualisieren")
    public ZuecherResponseDTO aktualisieren(@PathVariable Long id,
                                             @Valid @RequestBody ZuecherRequestDTO dto) {
        return zuecherService.aktualisieren(id, dto);
    }
}
