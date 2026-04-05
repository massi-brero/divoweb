package de.divowin.schauverwaltung.dto;

import java.math.BigDecimal;

/**
 * DTO für die Standgeld-Abrechnung eines Züchters bei einer Schau.
 */
public record StandgeldDTO(
        Long id,
        Long schauId,
        Long zuecherId,
        String zuecherNachname,
        String zuecherVorname,
        int anzahlGemeldet,
        int anzahlEingeliefert,
        BigDecimal standgeldProVogel,
        BigDecimal gesamtbetrag,
        boolean bezahlt
) {}
