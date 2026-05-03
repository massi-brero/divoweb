package de.divowin.schauverwaltung.entity;

import de.divowin.schauverwaltung.enums.Verband;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

/**
 * Züchter / Aussteller – entspricht Adressen.DB in der Altanwendung.
 *
 * Altanwendung speicherte Züchterdaten denormalisiert in jeder Schaudaten-Tabelle
 * (NName, VName, Strasse, Land, Wohnort). Hier normalisiert als eigene Entität.
 *
 * Felder aus Altanwendung:
 *   ZuechterNr  → verbandsnummer    (Primärschlüssel der Migration)
 *   NName       → nachname
 *   VName       → vorname
 *   Strasse     → strasse
 *   Plz         → plz               (NEU – fehlte im Original)
 *   Wohnort     → wohnort
 *   Land        → land
 *   Telefon     → telefon           (NEU – fehlte im Original)
 *   Sparte      → verband
 *   Katalog     → katalogEinverstaendnis
 */
@Entity
@Table(
    name = "zuecher",
    indexes = {
        @Index(name = "idx_zuecher_verbandsnummer", columnList = "verbandsnummer"),
        @Index(name = "idx_zuecher_nachname",       columnList = "nachname")
    }
)
@SequenceGenerator(name = "base_seq", sequenceName = "zuecher_seq", allocationSize = 1)
@Getter
@Setter
@NoArgsConstructor
public class Zuecher extends BaseEntity {

    /**
     * Verbandsmitgliedsnummer (z.B. "10294").
     * Entspricht ZuechterNr in Altanwendung.
     */
    @NotBlank
    @Size(max = 20)
    @Column(name = "verbandsnummer", nullable = false, length = 20)
    private String verbandsnummer;

    /**
     * Züchterverband (DWV, AZ, OWV, KCHA, ...).
     * Entspricht Feld "Sparte" in Altanwendung.
     */
    @Enumerated(EnumType.STRING)
    @Column(name = "verband", nullable = false, length = 20)
    private Verband verband = Verband.DWV;

    @NotBlank
    @Size(max = 100)
    @Column(name = "nachname", nullable = false, length = 100)
    private String nachname;

    @Size(max = 100)
    @Column(name = "vorname", length = 100)
    private String vorname;

    @Size(max = 200)
    @Column(name = "strasse", length = 200)
    private String strasse;

    /**
     * Postleitzahl (neu gegenüber Altanwendung, war in Schaudaten-Tabellen vorhanden
     * aber nicht normalisiert im Adressbuch).
     */
    @Size(max = 15)
    @Column(name = "plz", length = 15)
    private String plz;

    @Size(max = 100)
    @Column(name = "wohnort", length = 100)
    private String wohnort;

    /**
     * Länderkennzeichen (D, CH, F, ...) oder Vollname (Deutschland, Frankreich, ...).
     * Entspricht Feld "Land" in Schaudaten / "Nation" in Adressen.
     */
    @Size(max = 50)
    @Column(name = "land", length = 50)
    private String land;

    /**
     * Telefonnummer (neu gegenüber Altanwendung – war im Adressbuch vorhanden,
     * aber nie in die Züchter-Entität migriert worden).
     */
    @Size(max = 30)
    @Column(name = "telefon", length = 30)
    private String telefon;

    /**
     * Einverständnis zur Katalogaufnahme (DSGVO).
     * Entspricht Feld "Katalog" in Altanwendung.
     */
    @Column(name = "katalog_einverstaendnis", nullable = false)
    private boolean katalogEinverstaendnis = false;

    @OneToMany(mappedBy = "zuecher", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<Schauanmeldung> anmeldungen = new ArrayList<>();

    /** Vollständiger Name für Anzeige */
    @Transient
    public String getVollname() {
        if (vorname != null && !vorname.isBlank()) {
            return nachname + ", " + vorname;
        }
        return nachname;
    }
}
