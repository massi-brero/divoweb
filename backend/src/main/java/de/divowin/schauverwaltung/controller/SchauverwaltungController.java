package de.divowin.schauverwaltung.controller;

import de.divowin.schauverwaltung.dto.*;
import de.divowin.schauverwaltung.entity.Schau;
import de.divowin.schauverwaltung.service.*;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

// ============================================================
// Schau-Controller
// ============================================================
@RestController
@RequestMapping("/v1/schauen")
@Tag(name = "Schauen", description = "Verwaltung von Vogelschauen")
@RequiredArgsConstructor
class SchauController {

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

// ============================================================
// Züchter-Controller
// ============================================================
@RestController
@RequestMapping("/v1/zuecher")
@Tag(name = "Züchter", description = "Züchter-/Ausstellerverwaltung")
@RequiredArgsConstructor
class ZuecherController {

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

// ============================================================
// Schauanmeldung-Controller
// ============================================================
@RestController
@RequestMapping("/v1/schauen/{schauId}/anmeldungen")
@Tag(name = "Anmeldungen", description = "Vogel-/Käfigverwaltung pro Schau")
@RequiredArgsConstructor
class SchauanmeldungController {

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

// ============================================================
// Standgeld-Controller  (war bereits korrekt – unverändert)
// ============================================================
@RestController
@RequestMapping("/v1/schauen/{schauId}/standgeld")
@Tag(name = "Standgeld", description = "Standgeld-Abrechnung pro Züchter")
@RequiredArgsConstructor
class StandgeldController {

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

// ============================================================
// Medaillen-Controller  (ResponseEntity<Void> → @ResponseStatus void)
// ============================================================
@RestController
@RequestMapping("/v1/schauen/{schauId}/medaillen")
@Tag(name = "Medaillen", description = "Medaillenberechnung und -vergabe")
@RequiredArgsConstructor
class MedaillenController {

    private final MedaillenService medaillenService;

    @PostMapping("/berechnen")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    @Operation(summary = "Medaillen für alle Klassen berechnen")
    public void berechnen(@PathVariable Long schauId) {
        medaillenService.berechneMedaillenFuerSchau(schauId);
    }
}

// ============================================================
// Sieger-Controller
// ============================================================
@RestController
@RequestMapping("/v1/schauen/{schauId}/sieger")
@Tag(name = "Siegerliste", description = "Sieger- und Ehrenliste")
@RequiredArgsConstructor
class SiegerController {

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
