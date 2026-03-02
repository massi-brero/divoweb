package de.divowin.schauverwaltung.repository;

import de.divowin.schauverwaltung.entity.Sieger;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface SiegerRepository extends JpaRepository<Sieger, Long> {
    List<Sieger> findBySchauIdOrderByKategorieAscPositionAsc(Long schauId);
    List<Sieger> findBySchauIdAndKategorieOrderByPositionAsc(Long schauId, String kategorie);
    List<Sieger> findBySchauIdAndZuecherId(Long schauId, Long zuecherId);
}
