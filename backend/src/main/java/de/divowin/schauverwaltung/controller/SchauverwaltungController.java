package de.divowin.schauverwaltung.controller;

import de.divowin.schauverwaltung.dto.SchauDTO;
import de.divowin.schauverwaltung.dto.StandgeldDTO;
import de.divowin.schauverwaltung.entity.*;
import de.divowin.schauverwaltung.repository.*;
import de.divowin.schauverwaltung.service.*;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
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
    public SchauDTO schauAnlegen(@Valid @RequestBody Schau schau) {
        return schauService.schauAnlegen(schau);
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
@Tag(name = "Züchter", description = "Züchter-/Ausstellerverwaltung (Adressen.DB)")
@RequiredArgsConstructor
class ZuecherController {

    private final ZuecherRepository zuecherRepository;

    @GetMapping
    @Operation(summary = "Alle Züchter abrufen")
    public List<Zuecher> alle() {
        return zuecherRepository.findAll();
    }

    @GetMapping("/{id}")
    public ResponseEntity<Zuecher> byId(@PathVariable Long id) {
        return zuecherRepository.findById(id)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @GetMapping("/suche")
    @Operation(summary = "Züchter nach Name suchen")
    public List<Zuecher> suche(@RequestParam String name) {
        return zuecherRepository.findByNachnameContainingIgnoreCaseOrderByNachnameAsc(name);
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public Zuecher anlegen(@Valid @RequestBody Zuecher zuecher) {
        return zuecherRepository.save(zuecher);
    }

    @PutMapping("/{id}")
    public Zuecher aktualisieren(@PathVariable Long id, @Valid @RequestBody Zuecher zuecher) {
        zuecher.setId(id);
        return zuecherRepository.save(zuecher);
    }
}

// ============================================================
// Schauanmeldung-Controller
// ============================================================
@RestController
@RequestMapping("/v1/schauen/{schauId}/anmeldungen")
@Tag(name = "Anmeldungen", description = "Vogel-/Käfigverwaltung pro Schau (Schaudaten.DB)")
@RequiredArgsConstructor
class SchauanmeldungController {

    private final SchauanmeldungRepository anmeldungRepository;

    @GetMapping
    @Operation(summary = "Alle Anmeldungen einer Schau (nach Käfignummer)")
    public List<Schauanmeldung> alleAnmeldungen(@PathVariable Long schauId) {
        return anmeldungRepository.findBySchauIdOrderByKaefigNummerAsc(schauId);
    }

    @GetMapping("/nicht-platziert")
    @Operation(summary = "Nicht platzierte Vögel (Qualitätskontrolle)")
    public List<Schauanmeldung> nichtPlatzierte(@PathVariable Long schauId) {
        return anmeldungRepository.findNichtPlatzierte(schauId);
    }

    @GetMapping("/naechste-kaefignummer")
    @Operation(summary = "Nächste freie Käfignummer")
    public Integer naechsteKaefigNummer(@PathVariable Long schauId) {
        return anmeldungRepository.naechsteKaefigNummer(schauId);
    }

    @GetMapping("/kaefig/{kaefigNummer}")
    @Operation(summary = "Käfig per Nummer abrufen")
    public ResponseEntity<Schauanmeldung> byKaefigNummer(
            @PathVariable Long schauId, @PathVariable Integer kaefigNummer) {
        return anmeldungRepository.findBySchauIdAndKaefigNummer(schauId, kaefigNummer)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    @Operation(summary = "Vogel anmelden")
    public Schauanmeldung anmelden(@PathVariable Long schauId,
                                    @Valid @RequestBody Schauanmeldung anmeldung) {
        return anmeldungRepository.save(anmeldung);
    }

    @PatchMapping("/kaefig/{kaefigNummer}/platzierung/{platz}")
    @Operation(summary = "Platzierung eingeben (1–4)")
    public ResponseEntity<Schauanmeldung> platzierungEingeben(
            @PathVariable Long schauId,
            @PathVariable Integer kaefigNummer,
            @PathVariable Integer platz) {
        return anmeldungRepository.findBySchauIdAndKaefigNummer(schauId, kaefigNummer)
                .map(sa -> {
                    sa.setPlatzierung(platz);
                    return ResponseEntity.ok(anmeldungRepository.save(sa));
                })
                .orElse(ResponseEntity.notFound().build());
    }
}

// ============================================================
// Standgeld-Controller
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
// Medaillen-Controller
// ============================================================
@RestController
@RequestMapping("/v1/schauen/{schauId}/medaillen")
@Tag(name = "Medaillen", description = "Medaillenberechnung und -vergabe")
@RequiredArgsConstructor
class MedaillenController {

    private final MedaillenService medaillenService;

    @PostMapping("/berechnen")
    @Operation(summary = "Medaillen für alle Klassen berechnen")
    public ResponseEntity<Void> berechnen(@PathVariable Long schauId) {
        medaillenService.berechneMedaillenFuerSchau(schauId);
        return ResponseEntity.ok().build();
    }
}

// ============================================================
// Sieger-Controller
// ============================================================
@RestController
@RequestMapping("/v1/schauen/{schauId}/sieger")
@Tag(name = "Siegerliste", description = "Sieger- und Ehrenliste (Siegerliste.DB)")
@RequiredArgsConstructor
class SiegerController {

    private final SiegerRepository siegerRepository;

    @GetMapping
    @Operation(summary = "Siegerliste einer Schau")
    public List<Sieger> siegerListe(@PathVariable Long schauId) {
        return siegerRepository.findBySchauIdOrderByKategorieAscPositionAsc(schauId);
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    @Operation(summary = "Sieger eintragen")
    public Sieger eintragen(@PathVariable Long schauId, @Valid @RequestBody Sieger sieger) {
        return siegerRepository.save(sieger);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void loeschen(@PathVariable Long schauId, @PathVariable Long id) {
        siegerRepository.deleteById(id);
    }
}
