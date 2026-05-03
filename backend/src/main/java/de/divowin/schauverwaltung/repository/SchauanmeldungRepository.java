package de.divowin.schauverwaltung.repository;

import de.divowin.schauverwaltung.entity.Schauanmeldung;
import de.divowin.schauverwaltung.enums.Platzierungskennzeichen;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface SchauanmeldungRepository extends JpaRepository<Schauanmeldung, Long> {

    /** Alle Vögel einer Schau, nach Käfignummer sortiert */
    List<Schauanmeldung> findBySchauIdOrderByKaefigNummerAsc(Long schauId);

    /** Alle Vögel eines Züchters bei einer Schau */
    List<Schauanmeldung> findBySchauIdAndZuecherIdOrderByKaefigNummerAsc(
        Long schauId, Long zuecherId);

    /** Alle Vögel einer Klasse bei einer Schau */
    @Query("SELECT sa FROM Schauanmeldung sa " +
           "WHERE sa.schau.id = :schauId AND sa.vogelklasse.id = :klasseId " +
           "ORDER BY sa.platzierung ASC NULLS LAST, sa.kaefigNummer ASC")
    List<Schauanmeldung> findBySchauAndKlasse(
        @Param("schauId") Long schauId, @Param("klasseId") Long klasseId);

    /** Einzelner Käfig über Nummer */
    Optional<Schauanmeldung> findBySchauIdAndKaefigNummer(Long schauId, Integer kaefigNummer);

    /** Nächste freie Käfignummer */
    @Query("SELECT COALESCE(MAX(sa.kaefigNummer), 0) + 1 FROM Schauanmeldung sa " +
           "WHERE sa.schau.id = :schauId")
    Integer naechsteKaefigNummer(@Param("schauId") Long schauId);

    /** Alle nicht platzierten Vögel (für Qualitätskontrolle) */
    @Query("SELECT sa FROM Schauanmeldung sa " +
           "WHERE sa.schau.id = :schauId " +
           "AND sa.eingeliefert = true " +
           "AND sa.platzierung IS NULL " +
           "AND sa.platzierungskennzeichen = 'NORMAL' " +
           "ORDER BY sa.kaefigNummer ASC")
    List<Schauanmeldung> findNichtPlatzierte(@Param("schauId") Long schauId);

    /** Anzahl Vögel pro Klasse (für Regalplanung / Stellplatzbelegung) */
    @Query("SELECT sa.vogelklasse.id, COUNT(sa) FROM Schauanmeldung sa " +
           "WHERE sa.schau.id = :schauId AND sa.eingeliefert = true " +
           "GROUP BY sa.vogelklasse.id")
    List<Object[]> countEingeliefertProKlasse(@Param("schauId") Long schauId);

    /** Alle Vögel nach Richter sortiert (für Bewertungslisten) */
    @Query("SELECT sa FROM Schauanmeldung sa LEFT JOIN FETCH sa.richter " +
           "WHERE sa.schau.id = :schauId " +
           "ORDER BY sa.richter.position ASC NULLS LAST, sa.vogelklasse.skl1 ASC, sa.kaefigNummer ASC")
    List<Schauanmeldung> findBySchauIdSortiertNachRichter(@Param("schauId") Long schauId);

    /** Vögel mit Sonderkennzeichen NE oder FK */
    List<Schauanmeldung> findBySchauIdAndPlatzierungskennzeichenNot(
        Long schauId, Platzierungskennzeichen kennzeichen);
}
