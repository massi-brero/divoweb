package de.divowin.schauverwaltung.repository;

import de.divowin.schauverwaltung.entity.ZuecherPlatzierung;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;
import java.util.Optional;

@Repository
public interface ZuecherPlatzierungRepository extends JpaRepository<ZuecherPlatzierung, Long> {
    List<ZuecherPlatzierung> findBySchauIdOrderByRangAscPunkteGesamtDesc(Long schauId);
    Optional<ZuecherPlatzierung> findBySchauIdAndZuecherId(Long schauId, Long zuecherId);
    List<ZuecherPlatzierung> findBySchauIdAndIstSchausiegerTrue(Long schauId);
}
