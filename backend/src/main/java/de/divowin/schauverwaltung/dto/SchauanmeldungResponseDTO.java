package de.divowin.schauverwaltung.dto;

import de.divowin.schauverwaltung.enums.Geschlecht;
import de.divowin.schauverwaltung.enums.Medaille;
import de.divowin.schauverwaltung.enums.Platzierungskennzeichen;

public record SchauanmeldungResponseDTO(
        Long                    id,
        Integer                 kaefigNummer,
        Long                    zuecherId,
        String                  zuecherNachname,
        String                  zuecherVorname,
        String                  zuecherVerbandsnummer,
        String                  klassenschluessel,
        String                  farbbezeichnung,
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
