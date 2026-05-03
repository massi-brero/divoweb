package de.divowin.schauverwaltung.dto;

import de.divowin.schauverwaltung.enums.Medaille;

public record PlatzierungResponseDTO(
        Long     anmeldungId,
        Integer  kaefigNummer,
        Integer  platzierung,
        Medaille medaille
) {}
