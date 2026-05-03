package de.divowin.schauverwaltung.dto;

public record SiegerResponseDTO(
        Long    id,
        String  kategorie,
        Integer position,
        Long    zuecherId,
        String  zuecherNachname,
        String  zuecherVorname,
        /** Nur befüllt wenn anmeldungId gesetzt */
        Integer kaefigNummer,
        String  klassenschluessel,
        String  beschreibung,
        boolean manuellEingetragen
) {}
