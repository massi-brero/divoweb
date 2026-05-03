package de.divowin.schauverwaltung.dto;

/**
 * DTO für einen Zuchtrichter.
 * Wird als Teil von SchauDTO zurückgegeben.
 */
public record RichterDTO(
        Long id,
        Integer position,
        String nachname,
        String vorname,
        String vollname
) {}
