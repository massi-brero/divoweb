package de.divowin.schauverwaltung.repository;

import de.divowin.schauverwaltung.entity.Standgeld;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;
import java.util.Optional;

@Repository
public interface StandgeldRepository extends JpaRepository<Standgeld, Long> {
    List<Standgeld> findBySchauIdOrderByZuecherNachnameAsc(Long schauId);
    Optional<Standgeld> findBySchauIdAndZuecherId(Long schauId, Long zuecherId);
    List<Standgeld> findBySchauIdAndBezahltFalse(Long schauId);
}
