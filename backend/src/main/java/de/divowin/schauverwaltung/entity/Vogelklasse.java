package de.divowin.schauverwaltung.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

/**
 * Vogelklasse / Farbklasse – entspricht Farbe.DB in der Altanwendung.
 *
 * In der Altanwendung wurde die Klasse durch einen 3-teiligen Schlüssel
 * (Skl1 / Skl2 / Skl3) kodiert. Dieser Schlüssel wurde gegen die Farbe.DB
 * aufgelöst um Farbe1 und Farbe2 (Textbeschreibung) zu ermitteln.
 *
 * Hier als normalisierte Entität mit eindeutigem Klassenschlüssel.
 */
@Entity
@Table(
    name = "vogelklasse",
    uniqueConstraints = @UniqueConstraint(
        name = "uq_vogelklasse_schluessel",
        columnNames = {"skl1", "skl2", "skl3"}
    ),
    indexes = {
        @Index(name = "idx_vogelklasse_skl1", columnList = "skl1")
    }
)
@SequenceGenerator(name = "base_seq", sequenceName = "vogelklasse_seq", allocationSize = 1)
@Getter
@Setter
@NoArgsConstructor
public class Vogelklasse extends BaseEntity {

    /**
     * Erster Teil des 3-teiligen Klassenschlüssels.
     * Entspricht Feld "Skl1" in der Altanwendung (Hauptklasse/Vogelart).
     */
    @NotBlank
    @Size(max = 20)
    @Column(name = "skl1", nullable = false, length = 20)
    private String skl1;

    /**
     * Zweiter Teil des Klassenschlüssels.
     * Entspricht Feld "Skl2" (Farbengruppe).
     */
    @Size(max = 20)
    @Column(name = "skl2", length = 20)
    private String skl2;

    /**
     * Dritter Teil des Klassenschlüssels.
     * Entspricht Feld "Skl3" (Farbvariante).
     */
    @Size(max = 20)
    @Column(name = "skl3", length = 20)
    private String skl3;

    /**
     * Primäre Farbbezeichnung (aus Altanwendung: Farbe1).
     */
    @NotBlank
    @Size(max = 150)
    @Column(name = "farbe1", nullable = false, length = 150)
    private String farbe1;

    /**
     * Sekundäre Farbbezeichnung / Zusatz (aus Altanwendung: Farbe2).
     */
    @Size(max = 150)
    @Column(name = "farbe2", length = 150)
    private String farbe2;

    /**
     * Zusatzbezeichnung für konsolidierte Klassen (aus Altanwendung: ZusBez).
     */
    @Size(max = 200)
    @Column(name = "zusatzbezeichnung", length = 200)
    private String zusatzbezeichnung;

    /** Wird diese Klasse für dunkle Farben-Konsolidierung (AZ-DWV-Regelung) berücksichtigt? */
    @Column(name = "dunkelfarbe", nullable = false)
    private boolean dunkelfarbe = false;

    @OneToMany(mappedBy = "vogelklasse", fetch = FetchType.LAZY)
    private List<Schauanmeldung> anmeldungen = new ArrayList<>();

    /** Vollständiger Klassenschlüssel als String */
    @Transient
    public String getKlassenschluessel() {
        StringBuilder sb = new StringBuilder(skl1);
        if (skl2 != null && !skl2.isBlank()) sb.append("/").append(skl2);
        if (skl3 != null && !skl3.isBlank()) sb.append("/").append(skl3);
        return sb.toString();
    }

    /** Vollständige Farbbezeichnung */
    @Transient
    public String getFarbbezeichnung() {
        if (farbe2 != null && !farbe2.isBlank()) return farbe1 + " " + farbe2;
        return farbe1;
    }
}
