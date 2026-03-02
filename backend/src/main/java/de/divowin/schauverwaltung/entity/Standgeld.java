package de.divowin.schauverwaltung.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.Getter;
import lombok.Setter;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

/**
 * Standgeld-Abrechnung pro Züchter und Schau – entspricht [X][Jahr]Standgeld.db.
 *
 * Berechnet das Standgeld pro Züchter (Anzahl eingelieferter Vögel × Standgeld pro Vogel).
 * NE-Vögel (nicht eingeliefert) werden nicht berechnet.
 */
@Entity
@Table(
    name = "standgeld",
    uniqueConstraints = @UniqueConstraint(
        name = "uq_standgeld_schau_zuecher",
        columnNames = {"schau_id", "zuecher_id"}
    ),
    indexes = {
        @Index(name = "idx_standgeld_schau", columnList = "schau_id"),
        @Index(name = "idx_standgeld_zuecher", columnList = "zuecher_id")
    }
)
@SequenceGenerator(name = "base_seq", sequenceName = "standgeld_seq", allocationSize = 1)
@Getter
@Setter
@NoArgsConstructor
public class Standgeld extends BaseEntity {

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "schau_id", nullable = false)
    private Schau schau;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "zuecher_id", nullable = false)
    private Zuecher zuecher;

    /** Anzahl gemeldeter Vögel (inklusive NE) */
    @Column(name = "anzahl_gemeldet", nullable = false)
    private int anzahlGemeldet = 0;

    /** Anzahl tatsächlich eingelieferter Vögel (NE abgezogen) */
    @Column(name = "anzahl_eingeliefert", nullable = false)
    private int anzahlEingeliefert = 0;

    /** Standgeld-Betrag pro Vogel zum Zeitpunkt der Abrechnung */
    @Column(name = "standgeld_pro_vogel", nullable = false, precision = 6, scale = 2)
    private BigDecimal standgeldProVogel;

    /** Gesamtbetrag (anzahlEingeliefert × standgeldProVogel) */
    @Column(name = "gesamtbetrag", nullable = false, precision = 10, scale = 2)
    private BigDecimal gesamtbetrag = BigDecimal.ZERO;

    /** Wurde der Betrag bereits bezahlt? */
    @Column(name = "bezahlt", nullable = false)
    private boolean bezahlt = false;

    /** Berechnet den Gesamtbetrag neu */
    public void berechnen() {
        if (standgeldProVogel != null) {
            this.gesamtbetrag = standgeldProVogel.multiply(
                BigDecimal.valueOf(anzahlEingeliefert)
            );
        }
    }
}
