package de.divowin.schauverwaltung.repository;

import de.divowin.schauverwaltung.entity.*;
import de.divowin.schauverwaltung.enums.Schautyp;
import de.divowin.schauverwaltung.enums.Verband;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

// ============================================================
// Schau-Repository
// ============================================================
@Repository
public interface SchauRepository extends JpaRepository<Schau, Long> {

    List<Schau> findByJahrOrderBySchautypAsc(int jahr);

    List<Schau> findBySchautypAndJahrOrderByOrtAsc(Schautyp schautyp, int jahr);

    Optional<Schau> findBySchautypAndJahrAndVerband(Schautyp schautyp, int jahr, Verband verband);

    List<Schau> findByStatusOrderByJahrDescSchautypAsc(Schau.Schaustatus status);

    @Query("SELECT s FROM Schau s LEFT JOIN FETCH s.richter WHERE s.id = :id")
    Optional<Schau> findByIdWithRichter(@Param("id") Long id);
}
