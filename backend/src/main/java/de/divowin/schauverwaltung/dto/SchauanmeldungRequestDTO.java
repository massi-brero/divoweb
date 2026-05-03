package de.divowin.schauverwaltung.dto;

import de.divowin.schauverwaltung.enums.Geschlecht;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

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
