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
 *   ZuechterNr → verbandsnummer
 *   NName      → nachname
 *   VName      → vorname
 *   Strasse    → strasse
 *   Wohnort    → wohnort
 *   Land       → land
 *   Sparte     → verband
 */
@Entity
@Table(
    name = "zuecher",
    indexes = {
        @Index(name = "idx_zuecher_verbandsnummer", columnList = "verbandsnummer"),
        @Index(name = "idx_zuecher_nachname", columnList = "nachname")
    }
)
@SequenceGenerator(name = "base_seq", sequenceName = "zuecher_seq", allocationSize = 1)
@Getter
@Setter
@NoArgsConstructor
public class Zuecher extends BaseEntity {

    /**
     * Verbandsmitgliedsnummer (z.B. "13861").
     * Entspricht ZuechterNr in Altanwendung.
     * Nicht eindeutig über Verbände hinweg – Kombination mit verband ist eindeutig.
     */
    @NotBlank
    @Size(max = 20)
    @Column(name = "verbandsnummer", nullable = false, length = 20)
    private String verbandsnummer;

    /**
     * Züchterverband (DWV, AZ, AGZ, ...).
     * Entspricht Feld "Sparte" in Altanwendung.
     */
    @Enumerated(EnumType.STRING)
    @Column(name = "verband", nullable = false, length = 20)
    private Verband verband;

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

    @Size(max = 100)
    @Column(name = "wohnort", length = 100)
    private String wohnort;

    /**
     * Länderkennzeichen (D, CH, F, B, NL, A, ...).
     * Entspricht Feld "Land" in Altanwendung.
     */
    @Size(max = 10)
    @Column(name = "land", length = 10)
    private String land;

    /**
     * Einverständnis zur Katalogaufnahme (DSGVO).
     * Entspricht Feld "Katalog" in Altanwendung (als Flag in Schaudaten).
     * Hier auf Züchter-Ebene verwaltet.
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
