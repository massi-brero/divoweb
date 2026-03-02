package de.divowin.schauverwaltung.entity;

import de.divowin.schauverwaltung.enums.*;
import jakarta.persistence.*;
import jakarta.validation.constraints.*;
import lombok.Getter;
import lombok.Setter;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

/**
 * Schauanmeldung (ein Vogel / Käfig) – entspricht [X][Jahr]Schaudaten.db in der Altanwendung.
 *
 * Dies ist die zentrale Haupttabelle der Anwendung. Jeder Datensatz repräsentiert
 * einen angemeldeten Vogel (= Käfig) bei einer Schau.
 *
 * Felder aus Altanwendung (vollständige Abbildung):
 *   KaefigNr        → kaefigNummer
 *   Skl1/Skl2/Skl3  → vogelklasse (FK)
 *   Geschl          → geschlecht
 *   RingNr          → ringNummer
 *   ZuchtJahr       → zuchtjahr
 *   ZuechterNr      → zuecher (FK, war denormalisiert)
 *   Sparte          → über zuecher.verband
 *   ZuechterStufe   → zuechterStufe
 *   NName/VName     → über zuecher (war denormalisiert)
 *   Strasse/Land/Wohnort → über zuecher (war denormalisiert)
 *   Katalog         → katalogEinverstaendnis (jetzt auf Züchter-Ebene)
 *   Aktiv           → eingeliefert
 *   Platz           → platzierung (1–4)
 *   AnzSkl          → anzahlVoegelInKlasse (berechnetes Feld)
 *   AnZue           → anzahlZuechterInKlasse (berechnetes Feld)
 *   PktPl           → punktePlatz
 *   FkNe            → platzierungskennzeichen
 *   ZusBez          → klasseZusatzbezeichnung
 *   PktSchausGg     → punkteSchausiegeGegner
 *   PktSchaGr       → punkteSchaugruppe
 *   PktSchauGrGg    → punkteSchaugruppeGegner
 *   PktGruS         → punkteGruppensieger
 *   PktGrusGg       → punkteGruppensiegerGegner
 *   PktSchwF        → punkteSchwerpunktfarbe
 *   PktSchwFGg      → punkteSchwerpunktfarbeGegner
 *   PktGes          → punkteGesamt
 *   Zuri            → richter (FK)
 *   Medaille        → medaille
 *   Hellgr          → hellerGruppe (internes Flag)
 *   CHSt            → chStandard (internes Flag)
 */
@Entity
@Table(
    name = "schauanmeldung",
    uniqueConstraints = @UniqueConstraint(
        name = "uq_anmeldung_schau_kaefig",
        columnNames = {"schau_id", "kaefig_nummer"}
    ),
    indexes = {
        @Index(name = "idx_anmeldung_schau", columnList = "schau_id"),
        @Index(name = "idx_anmeldung_zuecher", columnList = "zuecher_id"),
        @Index(name = "idx_anmeldung_klasse", columnList = "vogelklasse_id"),
        @Index(name = "idx_anmeldung_kaefig", columnList = "schau_id, kaefig_nummer")
    }
)
@SequenceGenerator(name = "base_seq", sequenceName = "schauanmeldung_seq", allocationSize = 1)
@Getter
@Setter
@NoArgsConstructor
public class Schauanmeldung extends BaseEntity {

    // ─── Pflichtbeziehungen ──────────────────────────────────────────────────

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "schau_id", nullable = false)
    private Schau schau;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "zuecher_id", nullable = false)
    private Zuecher zuecher;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "vogelklasse_id", nullable = false)
    private Vogelklasse vogelklasse;

    /** Zugeteilter Zuchtrichter (wird bei Schauplanung zugewiesen) */
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "richter_id")
    private Richter richter;

    // ─── Käfig-Identifikation ────────────────────────────────────────────────

    /**
     * Fortlaufende Käfignummer innerhalb der Schau.
     * Entspricht KaefigNr in Altanwendung (wurde nicht wiederverwendet nach Löschung).
     */
    @NotNull
    @Positive
    @Column(name = "kaefig_nummer", nullable = false)
    private Integer kaefigNummer;

    // ─── Vogeldaten ──────────────────────────────────────────────────────────

    @NotNull
    @Enumerated(EnumType.STRING)
    @Column(name = "geschlecht", nullable = false, length = 10)
    private Geschlecht geschlecht = Geschlecht.UNBEKANNT;

    /**
     * Ringnummer des Vogels.
     * Entspricht RingNr in Altanwendung.
     */
    @Size(max = 50)
    @Column(name = "ring_nummer", length = 50)
    private String ringNummer;

    /**
     * Geburtsjahr des Vogels (4-stellig, Altanwendung speicherte 2-stellig).
     */
    @Min(2000) @Max(2100)
    @Column(name = "zuchtjahr")
    private Integer zuchtjahr;

    // ─── Anmeldestatus ───────────────────────────────────────────────────────

    /**
     * Ob der Vogel tatsächlich eingeliefert wurde.
     * Entspricht Feld "Aktiv" in Altanwendung. false = NE (nicht eingeliefert).
     */
    @Column(name = "eingeliefert", nullable = false)
    private boolean eingeliefert = true;

    // ─── Bewertung / Platzierung ─────────────────────────────────────────────

    /**
     * Platzierung des Vogels (1–4) oder null wenn nicht platziert.
     * Entspricht Feld "Platz" in Altanwendung.
     */
    @Min(1) @Max(4)
    @Column(name = "platzierung")
    private Integer platzierung;

    /**
     * Sonderkennzeichen (NE = nicht eingeliefert, FK = falsche Klasse).
     * Entspricht Feld "FkNe" in Altanwendung.
     */
    @Enumerated(EnumType.STRING)
    @Column(name = "platzierungskennzeichen", length = 10)
    private Platzierungskennzeichen platzierungskennzeichen = Platzierungskennzeichen.NORMAL;

    /**
     * Medaille des Vogels.
     * Entspricht Feld "Medaille" (G/S/B) in Altanwendung.
     */
    @Enumerated(EnumType.STRING)
    @Column(name = "medaille", length = 10)
    private Medaille medaille = Medaille.KEINE;

    // ─── Klassen-Statistik (werden bei Auswertung berechnet) ─────────────────

    /**
     * Anzahl Vögel in dieser Klasse bei dieser Schau.
     * Entspricht AnzSkl in Altanwendung (berechnetes Feld).
     */
    @Column(name = "anzahl_voegel_in_klasse")
    private Integer anzahlVoegelInKlasse;

    /**
     * Anzahl Züchter in dieser Klasse bei dieser Schau.
     * Entspricht AnZue in Altanwendung (berechnetes Feld).
     */
    @Column(name = "anzahl_zuecher_in_klasse")
    private Integer anzahlZuecherInKlasse;

    /**
     * Zusatzbezeichnung bei konsolidierten Klassen.
     * Entspricht ZusBez in Altanwendung.
     */
    @Size(max = 200)
    @Column(name = "klasse_zusatzbezeichnung", length = 200)
    private String klasseZusatzbezeichnung;

    // ─── Punktefelder ────────────────────────────────────────────────────────

    /**
     * Punkte für die Platzierung.
     * Entspricht PktPl in Altanwendung.
     */
    @Column(name = "punkte_platz", precision = 10, scale = 4)
    private BigDecimal punktePlatz;

    /**
     * Punkte Schausieger-Wertung.
     * Entspricht PktSchausGg in Altanwendung.
     */
    @Column(name = "punkte_schausieger_gegner", precision = 10, scale = 4)
    private BigDecimal punkteSchausiegeGegner;

    /**
     * Punkte Schaugruppen-Wertung.
     * Entspricht PktSchaGr / PktSchauGrGg in Altanwendung.
     */
    @Column(name = "punkte_schaugruppe", precision = 10, scale = 4)
    private BigDecimal punkteSchaugruppe;

    @Column(name = "punkte_schaugruppe_gegner", precision = 10, scale = 4)
    private BigDecimal punkteSchaugruppeGegner;

    /**
     * Punkte Gruppensieger-Wertung.
     * Entspricht PktGruS / PktGrusGg in Altanwendung.
     */
    @Column(name = "punkte_gruppensieger", precision = 10, scale = 4)
    private BigDecimal punkteGruppensieger;

    @Column(name = "punkte_gruppensieger_gegner", precision = 10, scale = 4)
    private BigDecimal punkteGruppensiegerGegner;

    /**
     * Punkte Schwerpunktfarbe-Wertung.
     * Entspricht PktSchwF / PktSchwFGg in Altanwendung.
     */
    @Column(name = "punkte_schwerpunktfarbe", precision = 10, scale = 4)
    private BigDecimal punkteSchwerpunktfarbe;

    @Column(name = "punkte_schwerpunktfarbe_gegner", precision = 10, scale = 4)
    private BigDecimal punkteSchwerpunktfarbeGegner;

    /**
     * Gesamtpunkte – Basis für Züchterrangliste.
     * Entspricht PktGes in Altanwendung.
     */
    @Column(name = "punkte_gesamt", precision = 10, scale = 4)
    private BigDecimal punkteGesamt;

    // ─── Interne Flags aus Altanwendung ─────────────────────────────────────

    /**
     * Heller-Gruppen-Flag (intern, aus Altanwendung: Hellgr).
     */
    @Column(name = "heller_gruppe", length = 20)
    private String hellerGruppe;

    /**
     * CH-Standard-Flag (intern, aus Altanwendung: CHSt).
     */
    @Column(name = "ch_standard", length = 20)
    private String chStandard;

    // ─── Berechnungen ────────────────────────────────────────────────────────

    /**
     * Gesamtpunkte berechnen aus allen Teilpunkten.
     */
    public void berechnePunkteGesamt() {
        BigDecimal gesamt = BigDecimal.ZERO;
        if (punktePlatz != null) gesamt = gesamt.add(punktePlatz);
        if (punkteSchausiegeGegner != null) gesamt = gesamt.add(punkteSchausiegeGegner);
        if (punkteSchaugruppe != null) gesamt = gesamt.add(punkteSchaugruppe);
        if (punkteSchaugruppeGegner != null) gesamt = gesamt.add(punkteSchaugruppeGegner);
        if (punkteGruppensieger != null) gesamt = gesamt.add(punkteGruppensieger);
        if (punkteGruppensiegerGegner != null) gesamt = gesamt.add(punkteGruppensiegerGegner);
        if (punkteSchwerpunktfarbe != null) gesamt = gesamt.add(punkteSchwerpunktfarbe);
        if (punkteSchwerpunktfarbeGegner != null) gesamt = gesamt.add(punkteSchwerpunktfarbeGegner);
        this.punkteGesamt = gesamt;
    }

    /** Liefert true wenn dieser Vogel in der Wertung zählt */
    @Transient
    public boolean isGewertet() {
        return eingeliefert
            && platzierungskennzeichen == Platzierungskennzeichen.NORMAL;
    }
}
