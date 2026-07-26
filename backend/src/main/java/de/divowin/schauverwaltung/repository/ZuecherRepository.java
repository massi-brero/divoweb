package de.divowin.schauverwaltung.repository;

import de.divowin.schauverwaltung.entity.Zuecher;
import de.divowin.schauverwaltung.enums.Verband;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface ZuecherRepository extends JpaRepository<Zuecher, Long> {

    Optional<Zuecher> findByVerbandsnummerAndVerband(String verbandsnummer, Verband verband);

    /** Suche nur nach Verbandsnummer, ohne Einschränkung auf einen Verband. */
    List<Zuecher> findByVerbandsnummer(String verbandsnummer);

    List<Zuecher> findByNachnameContainingIgnoreCaseOrderByNachnameAsc(String nachname);

    List<Zuecher> findByVerbandOrderByNachnameAscVornameAsc(Verband verband);

    List<Zuecher> findByLandOrderByNachnameAsc(String land);

    @Query("SELECT z FROM Zuecher z WHERE z.katalogEinverstaendnis = true " +
           "ORDER BY z.nachname ASC, z.vorname ASC")
    List<Zuecher> findAllMitKatalogEinverstaendnis();

    /** Alle Züchter die bei einer bestimmten Schau angemeldet sind */
    @Query("SELECT DISTINCT sa.zuecher FROM Schauanmeldung sa WHERE sa.schau.id = :schauId " +
           "ORDER BY sa.zuecher.nachname ASC")
    List<Zuecher> findBySchauId(@Param("schauId") Long schauId);
}
