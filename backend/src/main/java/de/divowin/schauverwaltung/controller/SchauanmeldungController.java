package de.divowin.schauverwaltung.controller;

import de.divowin.schauverwaltung.dto.PlatzierungResponseDTO;
import de.divowin.schauverwaltung.dto.SchauanmeldungRequestDTO;
import de.divowin.schauverwaltung.dto.SchauanmeldungResponseDTO;
import de.divowin.schauverwaltung.service.SchauanmeldungService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/v1/schauen/{schauId}/anmeldungen")
@Tag(name = "Anmeldungen", description = "Vogel-/Käfigverwaltung pro Schau")
@RequiredArgsConstructor
public class SchauanmeldungController {

    private final SchauanmeldungService anmeldungService;

    @GetMapping
    @Operation(summary = "Alle Anmeldungen einer Schau (nach Käfignummer)")
    public List<SchauanmeldungResponseDTO> alleAnmeldungen(@PathVariable Long schauId) {
        return anmeldungService.alleAnmeldungen(schauId);
    }

    @GetMapping("/nicht-platziert")
    @Operation(summary = "Nicht platzierte Vögel (Qualitätskontrolle)")
    public List<SchauanmeldungResponseDTO> nichtPlatzierte(@PathVariable Long schauId) {
        return anmeldungService.nichtPlatzierte(schauId);
    }

    @GetMapping("/naechste-kaefignummer")
    @Operation(summary = "Nächste freie Käfignummer")
    public Integer naechsteKaefigNummer(@PathVariable Long schauId) {
        return anmeldungService.naechsteKaefigNummer(schauId);
    }

    @GetMapping("/kaefig/{kaefigNummer}")
    @Operation(summary = "Käfig per Nummer abrufen")
    public SchauanmeldungResponseDTO byKaefigNummer(@PathVariable Long schauId,
                                                     @PathVariable Integer kaefigNummer) {
        return anmeldungService.byKaefigNummer(schauId, kaefigNummer); // 404 via GlobalExceptionHandler
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    @Operation(summary = "Vogel anmelden")
    public SchauanmeldungResponseDTO anmelden(@PathVariable Long schauId,
                                               @Valid @RequestBody SchauanmeldungRequestDTO dto) {
        return anmeldungService.anmelden(schauId, dto);
    }

    @PatchMapping("/kaefig/{kaefigNummer}/platzierung/{platz}")
    @Operation(summary = "Platzierung eingeben (1–4)")
    public PlatzierungResponseDTO platzierungEingeben(@PathVariable Long schauId,
                                                       @PathVariable Integer kaefigNummer,
                                                       @PathVariable Integer platz) {
        return anmeldungService.platzierungEingeben(schauId, kaefigNummer, platz);
    }
}
