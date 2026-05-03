package de.divowin.schauverwaltung.repository;

import de.divowin.schauverwaltung.entity.ZuecherPlatzierung;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface ZuecherPlatzierungRepository extends JpaRepository<ZuecherPlatzierung, Long> {

    List<ZuecherPlatzierung> findBySchauIdOrderByRangAscPunkteGesamtDesc(Long schauId);

    Optional<ZuecherPlatzierung> findBySchauIdAndZuecherId(Long schauId, Long zuecherId);

    List<ZuecherPlatzierung> findBySchauIdAndIstSchausiegerTrue(Long schauId);

    /** Rangliste mit Medaillendetails – direkt aus den Altdaten übertragen */
    @Query("SELECT zp FROM ZuecherPlatzierung zp " +
           "WHERE zp.schau.id = :schauId " +
           "ORDER BY zp.rang ASC NULLS LAST, zp.punkteGesamt DESC, " +
           "         zp.medaillenGold DESC, zp.medaillenSilber DESC")
    List<ZuecherPlatzierung> findRanglisteBySchauId(@Param("schauId") Long schauId);

    /** Alle Züchter mit mindestens einer Medaille */
    @Query("SELECT zp FROM ZuecherPlatzierung zp " +
           "WHERE zp.schau.id = :schauId " +
           "AND (zp.medaillenGold + zp.medaillenSilber + zp.medaillenBronze) > 0 " +
           "ORDER BY zp.medaillenGold DESC, zp.medaillenSilber DESC")
    List<ZuecherPlatzierung> findMitMedailleBySchauId(@Param("schauId") Long schauId);
}
