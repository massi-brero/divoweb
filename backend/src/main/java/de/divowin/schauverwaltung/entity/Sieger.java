package de.divowin.schauverwaltung.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Getter;
import lombok.Setter;
import lombok.NoArgsConstructor;

/**
 * Siegerlisten-Eintrag – entspricht [X][Jahr]Siegerliste.db in der Altanwendung.
 *
 * Speichert alle Sieger einer Schau: Schausieger, Bundessieger, Gruppensieger,
 * Sonderpreise, Trophäen, Europa-Champion-Kategorien etc.
 *
 * Die Siegerarten sind schautyp-spezifisch und werden als konfigurierbare
 * Kategorien abgebildet (war in Altanwendung als Vorlagen-DB vorgesehen:
 * BSiegerliste.DB, CSiegerliste.DB, ESiegerliste.DB, LSiegerliste.DB, VSiegerliste.DB).
 */
@Entity
@Table(
    name = "sieger",
    indexes = {
        @Index(name = "idx_sieger_schau", columnList = "schau_id"),
        @Index(name = "idx_sieger_zuecher", columnList = "zuecher_id"),
        @Index(name = "idx_sieger_kategorie", columnList = "kategorie")
    }
)
@SequenceGenerator(name = "base_seq", sequenceName = "sieger_seq", allocationSize = 1)
@Getter
@Setter
@NoArgsConstructor
public class Sieger extends BaseEntity {

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "schau_id", nullable = false)
    private Schau schau;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "zuecher_id", nullable = false)
    private Zuecher zuecher;

    /** Optionale Verknüpfung zum siegreichen Käfig */
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "anmeldung_id")
    private Schauanmeldung anmeldung;

    /**
     * Siegerkategorie (z.B. "Schausieger", "Bundessieger", "Gruppensieger Grün",
     * "Europa Champion Standard", "Sonderpreis XY").
     * Entspricht den Eintragstypen in den Siegerlisten-Vorlagentabellen.
     */
    @NotBlank
    @Column(name = "kategorie", nullable = false, length = 200)
    private String kategorie;

    /**
     * Sortierposition innerhalb der Kategorie.
     */
    @Column(name = "position")
    private Integer position;

    /**
     * Freitext-Beschreibung (z.B. Trophäenname, Sonderpreis-Bezeichnung).
     */
    @Column(name = "beschreibung", columnDefinition = "TEXT")
    private String beschreibung;

    /**
     * Wurde dieser Sieger manuell eingetragen (true) oder automatisch berechnet (false)?
     */
    @Column(name = "manuell_eingetragen", nullable = false)
    private boolean manuellEingetragen = true;
}
