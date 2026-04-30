package de.divowin.schauverwaltung.dto;

import de.divowin.schauverwaltung.enums.Geschlecht;
import de.divowin.schauverwaltung.enums.Medaille;
import de.divowin.schauverwaltung.enums.Platzierungskennzeichen;
import jakarta.validation.constraints.*;

// ============================================================
// Request-DTO: Vogel anmelden
// ============================================================
public record SchauanmeldungRequestDTO(

        @NotNull(message = "Züchter-ID ist Pflichtfeld")
        Long zuecherId,

        @NotNull(message = "Vogelklasse-ID ist Pflichtfeld")
        Long vogelklasseId,

        @NotNull(message = "Geschlecht ist Pflichtfeld")
        Geschlecht geschlecht,

        @Size(max = 50)
        String ringNummer,

        @Min(2000) @Max(2100)
        Integer zuchtjahr
) {}

// ============================================================
// Response-DTO: Anmeldung-Ausgabe
// ============================================================
public record SchauanmeldungResponseDTO(
        Long                    id,
        Integer                 kaefigNummer,
        Long                    zuecherId,
        String                  zuecherNachname,
        String                  zuecherVorname,
        String                  zuecherVerbandsnummer,
        String                  klassenschluessel,      // z.B. "WP/GR/DU"
        String                  farbbezeichnung,        // z.B. "Grau Dunkel"
        Geschlecht              geschlecht,
        String                  ringNummer,
        Integer                 zuchtjahr,
        boolean                 eingeliefert,
        Integer                 platzierung,
        Platzierungskennzeichen platzierungskennzeichen,
        Medaille                medaille,
        Integer                 anzahlVoegelInKlasse,
        Integer                 anzahlZuecherInKlasse
) {}

// ============================================================
// Response-DTO: Schlanke Rückmeldung nach Platzierungs-Update
// ============================================================
public record PlatzierungResponseDTO(
        Long     anmeldungId,
        Integer  kaefigNummer,
        Integer  platzierung,
        Medaille medaille
) {}
