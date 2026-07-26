package de.divowin.schauverwaltung.dto;

// ============================================================
// Response-DTO: Vogelklasse-Ausgabe (Lookup über Schauklassenschlüssel)
// ============================================================
public record VogelklasseResponseDTO(
        Long   id,
        String skl1,
        String skl2,
        String skl3,
        String schluessel,
        String farbbezeichnung
) {}
