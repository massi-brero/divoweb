package de.divowin.schauverwaltung.dto;

import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

public record SiegerRequestDTO(

        @NotBlank(message = "Kategorie ist Pflichtfeld")
        @Size(max = 200)
        String kategorie,

        @Min(value = 1, message = "Position muss mindestens 1 sein")
        Integer position,

        @NotNull(message = "Züchter-ID ist Pflichtfeld")
        Long zuecherId,

        /** Optional – Verknüpfung zum siegreichen Käfig */
        Long anmeldungId,

        String beschreibung,

        boolean manuellEingetragen
) {}
