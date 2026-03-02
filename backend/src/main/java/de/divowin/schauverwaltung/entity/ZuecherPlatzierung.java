package de.divowin.schauverwaltung.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.Getter;
import lombok.Setter;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

/**
 * Gesamtplatzierung eines Züchters bei einer Schau – entspricht [X][Jahr]ZuePlacier.db.
 *
 * Aggregiert alle Punkte und Medaillen eines Züchters über alle seine Vögel
 * zu einer Gesamtauswertung. Grundlage für Züchter-Rangliste und Urkunden.
 *
 * Entspricht auch der Medliste.DB die folgende Felder enthielt:
 *   Name, Verbnr, ZStufe, Schausieger, Schaugrs, Gruppens, Gold, Silber, Bronze
 */
@Entity
@Table(
    name = "zuecher_platzierung",
    uniqueConstraints = @UniqueConstraint(
        name = "uq_zuecher_platzierung",
        columnNames = {"schau_id", "zuecher_id"}
    ),
    indexes = {
        @Index(name = "idx_zuechpl_schau", columnList = "schau_id"),
        @Index(name = "idx_zuechpl_zuecher", columnList = "zuecher_id"),
        @Index(name = "idx_zuechpl_rang", columnList = "schau_id, rang")
    }
)
@SequenceGenerator(name = "base_seq", sequenceName = "zuecher_platzierung_seq", allocationSize = 1)
@Getter
@Setter
@NoArgsConstructor
public class ZuecherPlatzierung extends BaseEntity {

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "schau_id", nullable = false)
    private Schau schau;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "zuecher_id", nullable = false)
    private Zuecher zuecher;

    /** Gesamtrang des Züchters in der Schau */
    @Column(name = "rang")
    private Integer rang;

    /**
     * Züchterstufe / Kategorie (z.B. Schausieger-Anwärter, Gruppensieger-Anwärter).
     * Entspricht ZuechterStufe / ZStufe in der Altanwendung.
     */
    @Column(name = "zuecher_stufe")
    private Integer zuecherStufe;

    // Medaillen-Zähler (aus Medliste.DB)
    @Column(name = "medaillen_gold", nullable = false)
    private int medaillenGold = 0;

    @Column(name = "medaillen_silber", nullable = false)
    private int medaillenSilber = 0;

    @Column(name = "medaillen_bronze", nullable = false)
    private int medaillenBronze = 0;

    // Sondertitel-Flags (aus Medliste.DB: Schausieger, Schaugrs, Gruppens)
    @Column(name = "ist_schausieger", nullable = false)
    private boolean istSchausieger = false;

    @Column(name = "ist_schaugruppensieger", nullable = false)
    private boolean istSchaugruppensieger = false;

    @Column(name = "ist_gruppensieger", nullable = false)
    private boolean istGruppensieger = false;

    // Gesamtpunkte-Aggregation
    @Column(name = "punkte_gesamt", precision = 12, scale = 4)
    private BigDecimal punkteGesamt = BigDecimal.ZERO;

    @Column(name = "anzahl_voegel_gemeldet", nullable = false)
    private int anzahlVoegelGemeldet = 0;

    @Column(name = "anzahl_voegel_eingeliefert", nullable = false)
    private int anzahlVoegelEingeliefert = 0;

    @Column(name = "anzahl_voegel_platziert", nullable = false)
    private int anzahlVoegelPlatziert = 0;

    /** Gesamtzahl aller Medaillen */
    @Transient
    public int getMedaillenGesamt() {
        return medaillenGold + medaillenSilber + medaillenBronze;
    }
}
