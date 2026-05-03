package de.divowin.schauverwaltung.enums;

/**
 * Geschlecht des Vogels – entspricht Feld "Geschl" in der Altanwendung.
 */
public enum Geschlecht {
    MAENNLICH("M", "Männlich"),
    WEIBLICH("W", "Weiblich"),
    UNBEKANNT("U", "Unbekannt");

    private final String altCode;
    private final String bezeichnung;

    Geschlecht(String altCode, String bezeichnung) {
        this.altCode = altCode;
        this.bezeichnung = bezeichnung;
    }

    public String getAltCode() { return altCode; }
    public String getBezeichnung() { return bezeichnung; }

    public static Geschlecht vonAltCode(String code) {
        if (code == null) return UNBEKANNT;
        for (Geschlecht g : values()) {
            if (code.equalsIgnoreCase(g.altCode)) return g;
        }
        return UNBEKANNT;
    }
}
