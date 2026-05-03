package de.divowin.schauverwaltung.dto;

import de.divowin.schauverwaltung.entity.Schau;
import de.divowin.schauverwaltung.enums.Schautyp;
import de.divowin.schauverwaltung.enums.Verband;

import java.math.BigDecimal;
import java.util.List;

/**
 * DTO für eine Schau.
 *
 * <p>Listenendpunkte ({@code alleSchauen}, {@code schauenNachJahr}) liefern
 * {@code richter} als leere Liste – die Richter werden nur beim Einzelabruf
 * ({@code schauById}) mitgeladen.</p>
 */
public record SchauDTO(
        Long id,
        Schautyp schautyp,
        Integer jahr,
        String ort,
        Verband verband,
        BigDecimal standgeldProVogel,
        Schau.Schaustatus status,
        String notizen,
        String bezeichnung,
        List<RichterDTO> richter
) {}
