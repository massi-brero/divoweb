package de.divowin.schauverwaltung.repository;

import de.divowin.schauverwaltung.entity.Vogelklasse;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface VogelklasseRepository extends JpaRepository<Vogelklasse, Long> {

    Optional<Vogelklasse> findBySkl1AndSkl2AndSkl3(String skl1, String skl2, String skl3);

    List<Vogelklasse> findBySkl1OrderBySkl2AscSkl3Asc(String skl1);

    @Query("SELECT DISTINCT v.skl1 FROM Vogelklasse v ORDER BY v.skl1")
    List<String> findDistinctSkl1();

    List<Vogelklasse> findByFarbe1ContainingIgnoreCaseOrFarbe2ContainingIgnoreCase(
        String farbe1, String farbe2);

    /** Klassenschlüssel-Lookup wie in Altanwendung */
    @Query("SELECT v FROM Vogelklasse v WHERE " +
           "v.skl1 = :skl1 AND " +
           "(:skl2 IS NULL OR v.skl2 = :skl2) AND " +
           "(:skl3 IS NULL OR v.skl3 = :skl3)")
    Optional<Vogelklasse> lookup(
        @Param("skl1") String skl1,
        @Param("skl2") String skl2,
        @Param("skl3") String skl3);
}
