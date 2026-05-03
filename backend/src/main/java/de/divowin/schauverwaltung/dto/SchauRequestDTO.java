package de.divowin.schauverwaltung.dto;

import de.divowin.schauverwaltung.enums.Schautyp;
import de.divowin.schauverwaltung.enums.Verband;
import jakarta.validation.constraints.*;

import java.math.BigDecimal;

/**
 * Request-DTO für das Anlegen einer neuen Schau.
 * Ersetzt den direkten @RequestBody Schau im SchauController.
 */
public record SchauRequestDTO(

        @NotNull(message = "Schautyp ist Pflichtfeld")
        Schautyp schautyp,

        @NotNull(message = "Jahr ist Pflichtfeld")
        @Min(value = 2000, message = "Jahr muss >= 2000 sein")
        @Max(value = 2100, message = "Jahr muss <= 2100 sein")
        Integer jahr,

        @NotBlank(message = "Ort ist Pflichtfeld")
        @Size(max = 200)
        String ort,

        @NotNull(message = "Verband ist Pflichtfeld")
        Verband verband,

        @NotNull(message = "Standgeld pro Vogel ist Pflichtfeld")
        @DecimalMin(value = "0.00", message = "Standgeld darf nicht negativ sein")
        @Digits(integer = 4, fraction = 2)
        BigDecimal standgeldProVogel,

        String notizen
) {}
