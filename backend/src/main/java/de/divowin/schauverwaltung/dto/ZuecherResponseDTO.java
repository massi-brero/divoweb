package de.divowin.schauverwaltung.dto;

import de.divowin.schauverwaltung.enums.Verband;

// ============================================================
// Response-DTO: Züchter-Ausgabe
// Keine JPA-Internas (version, erstelltAm, geaendertAm, Lazy-Collections)
// ============================================================
public record ZuecherResponseDTO(
        Long    id,
        String  verbandsnummer,
        Verband verband,
        String  nachname,
        String  vorname,
        String  vollname,           // Transient-Feld aus Entity wiederverwendet
        String  strasse,
        String  plz,
        String  wohnort,
        String  land,
        String  telefon,
        boolean katalogEinverstaendnis
) {}
