package de.divowin.schauverwaltung.entity;

import de.divowin.schauverwaltung.enums.Schautyp;
import de.divowin.schauverwaltung.enums.Verband;
import jakarta.persistence.*;
import jakarta.validation.constraints.*;
import lombok.Getter;
import lombok.Setter;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

/**
 * Schau (Vogelausstellung) – entspricht [X][Jahr]Zuri.db in der Altanwendung.
 *
 * In der Altanwendung wurde jede Schau durch einen Dateinamen-Präfix kodiert
 * (z.B. "M2025" für Meisterschau 2025). Hier als echte Entität mit FK-Beziehungen.
 *
 * Felder aus Altanwendung (Zuri.db):
 *   SchauArt   → schautyp
 *   SchauOrt   → ort
 *   SchauJahr  → jahr
 *   Sparte     → verband
 *   StandGeld  → standgeldProVogel
 *   ZuRi1-18   → richter (1:n-Relation zu Richter-Entität)
 *   NrSchau    → interne Schaunummer (hier id)
 */
@Entity
@Table(
    name = "schau",
    uniqueConstraints = @UniqueConstraint(
        name = "uq_schau_typ_jahr_verband",
        columnNames = {"schautyp", "jahr", "verband"}
    ),
    indexes = {
        @Index(name = "idx_schau_jahr", columnList = "jahr"),
        @Index(name = "idx_schau_typ", columnList = "schautyp")
    }
)
@SequenceGenerator(name = "base_seq", sequenceName = "schau_seq", allocationSize = 1)
@Getter
@Setter
@NoArgsConstructor
public class Schau extends BaseEntity {

    @NotNull
    @Enumerated(EnumType.STRING)
    @Column(name = "schautyp", nullable = false, length = 20)
    private Schautyp schautyp;

    @NotNull
    @Min(2000)
    @Max(2100)
    @Column(name = "jahr", nullable = false)
    private Integer jahr;

    @NotBlank
    @Size(max = 200)
    @Column(name = "ort", nullable = false, length = 200)
    private String ort;

    @NotNull
    @Enumerated(EnumType.STRING)
    @Column(name = "verband", nullable = false, length = 20)
    private Verband verband;

    /**
     * Standgeld pro eingeliefertem Vogel in Euro.
     * Entspricht Feld "StandGeld" in Altanwendung (typisch 2,50 oder 3,00 €).
     */
    @NotNull
    @DecimalMin("0.00")
    @Digits(integer = 4, fraction = 2)
    @Column(name = "standgeld_pro_vogel", nullable = false, precision = 6, scale = 2)
    private BigDecimal standgeldProVogel = new BigDecimal("2.50");

    /**
     * Status der Schau.
     */
    @NotNull
    @Enumerated(EnumType.STRING)
    @Column(name = "status", nullable = false, length = 20)
    private Schaustatus status = Schaustatus.VORBEREITUNG;

    /**
     * Zusätzliche Notizen / Beschreibung.
     */
    @Column(name = "notizen", columnDefinition = "TEXT")
    private String notizen;

    /** Zuchtrichter dieser Schau (bis zu 18 in der Altanwendung) */
    @OneToMany(mappedBy = "schau", cascade = CascadeType.ALL, orphanRemoval = true, fetch = FetchType.LAZY)
    @OrderBy("position ASC")
    private List<Richter> richter = new ArrayList<>();

    /** Alle angemeldeten Vögel dieser Schau */
    @OneToMany(mappedBy = "schau", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<Schauanmeldung> anmeldungen = new ArrayList<>();

    /** Siegerliste dieser Schau */
    @OneToMany(mappedBy = "schau", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<Sieger> sieger = new ArrayList<>();

    /** Bezeichnung für Anzeige, z.B. "Meisterschau Nürnberg 2025" */
    @Transient
    public String getBezeichnung() {
        return schautyp.getBezeichnung() + " " + ort + " " + jahr;
    }

    /** Status-Enum für den Schauablauf */
    public enum Schaustatus {
        VORBEREITUNG,     // Schau angelegt, Anmeldungen laufen
        ANMELDUNG_OFFEN,  // Züchter können Vögel anmelden
        ANMELDUNG_GESCHLOSSEN, // Keine neuen Anmeldungen
        BEWERTUNG_LAEUFT, // Richter bewerten während der Schau
        ABGESCHLOSSEN,    // Schau beendet, Ergebnisse final
        ARCHIVIERT        // Historische Schau
    }
}
