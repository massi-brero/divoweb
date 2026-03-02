package de.divowin.schauverwaltung.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.Max;
import lombok.Getter;
import lombok.Setter;
import lombok.NoArgsConstructor;

/**
 * Zuchtrichter einer Schau – entspricht den Feldern ZuRi1–ZuRi18 in der Zuri.db.
 *
 * In der Altanwendung wurden Richter als flache Felder (ZuRi1 bis ZuRi18)
 * in der Schaukonfigurationstabelle gespeichert. Hier als eigene normalisierte Entität.
 */
@Entity
@Table(
    name = "richter",
    indexes = {
        @Index(name = "idx_richter_schau", columnList = "schau_id"),
        @Index(name = "idx_richter_nachname", columnList = "nachname")
    }
)
@SequenceGenerator(name = "base_seq", sequenceName = "richter_seq", allocationSize = 1)
@Getter
@Setter
@NoArgsConstructor
public class Richter extends BaseEntity {

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "schau_id", nullable = false)
    private Schau schau;

    /**
     * Position des Richters (1–18).
     * Entspricht dem Suffix in ZuRi1–ZuRi18 der Altanwendung.
     */
    @NotNull
    @Min(1) @Max(18)
    @Column(name = "position", nullable = false)
    private Integer position;

    @NotBlank
    @Column(name = "nachname", nullable = false, length = 100)
    private String nachname;

    @Column(name = "vorname", length = 100)
    private String vorname;

    /** Vollständiger Name für Anzeige und Druckausgaben */
    @Transient
    public String getVollname() {
        if (vorname != null && !vorname.isBlank()) {
            return vorname + " " + nachname;
        }
        return nachname;
    }
}
