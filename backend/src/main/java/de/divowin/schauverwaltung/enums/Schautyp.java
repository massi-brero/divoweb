package de.divowin.schauverwaltung.enums;

/**
 * Schautypen – entspricht dem Dateinamen-Präfix in der Altanwendung
 * (B2025Schaudaten.db, L2025Schaudaten.db, etc.)
 */
public enum Schautyp {

    /** Bundesschau – höchste Ebene, DWV/AZ/AGZ u.a. */
    BUNDESSCHAU("B", "Bundesschau"),

    /** Clubschau – Vereinsebene */
    CLUBSCHAU("C", "Clubschau"),

    /** Europaschau / Exotenschau – AEZ, AEV, AFZ u.a. */
    EUROPASCHAU("E", "Europaschau"),

    /** Landesschau – Landesverbandsebene */
    LANDESSCHAU("L", "Landesschau"),

    /** Meisterschau – regionale DWV-Ebene */
    MEISTERSCHAU("M", "Meisterschau"),

    /** Vereinsschau */
    VEREINSSCHAU("V", "Vereinsschau");

    private final String kuerzel;
    private final String bezeichnung;

    Schautyp(String kuerzel, String bezeichnung) {
        this.kuerzel = kuerzel;
        this.bezeichnung = bezeichnung;
    }

    public String getKuerzel() { return kuerzel; }
    public String getBezeichnung() { return bezeichnung; }

    public static Schautyp vonKuerzel(String kuerzel) {
        for (Schautyp t : values()) {
            if (t.kuerzel.equalsIgnoreCase(kuerzel)) return t;
        }
        throw new IllegalArgumentException("Unbekanntes Schautyp-Kürzel: " + kuerzel);
    }
}
