package de.divowin.schauverwaltung.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import java.time.LocalDateTime;

/**
 * Basisklasse für alle Entitäten.
 * Enthält automatisch befüllte Audit-Felder (fehlen in der Altanwendung komplett).
 */
@MappedSuperclass
@EntityListeners(AuditingEntityListener.class)
@Getter
@Setter
public abstract class BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "base_seq")
    private Long id;

    @CreatedDate
    @Column(name = "erstellt_am", nullable = false, updatable = false)
    private LocalDateTime erstelltAm;

    @LastModifiedDate
    @Column(name = "geaendert_am")
    private LocalDateTime geaendertAm;

    @Version
    @Column(name = "version")
    private Long version;
}
