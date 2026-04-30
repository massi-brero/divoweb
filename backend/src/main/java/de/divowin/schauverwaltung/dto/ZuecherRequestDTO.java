package de.divowin.schauverwaltung.dto;

import de.divowin.schauverwaltung.enums.Verband;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

// ============================================================
// Request-DTO: Züchter anlegen / aktualisieren
// ============================================================
public record ZuecherRequestDTO(

        @NotBlank(message = "Verbandsnummer ist Pflichtfeld")
        @Size(max = 20)
        String verbandsnummer,

        @NotNull(message = "Verband ist Pflichtfeld")
        Verband verband,

        @NotBlank(message = "Nachname ist Pflichtfeld")
        @Size(max = 100)
        String nachname,

        @Size(max = 100)
        String vorname,

        @Size(max = 200)
        String strasse,

        @Size(max = 15)
        String plz,

        @Size(max = 100)
        String wohnort,

        @Size(max = 50)
        String land,

        @Size(max = 30)
        String telefon,

        boolean katalogEinverstaendnis
) {}
