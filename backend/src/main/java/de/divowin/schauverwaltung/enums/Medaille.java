package de.divowin.schauverwaltung.enums;

/**
 * Medaillentypen – entspricht dem Feld "Medaille" (G/S/B) in der Altanwendung.
 *
 * Vergaberegeln (automatisch berechnet):
 *   Gold:   >= 7 Vögel aus >= 2 Züchtern in der Klasse
 *   Silber: >= 5 Vögel aus >= 2 Züchtern
 *   Bronze: >= 3 Vögel aus >= 2 Züchtern
 *   Keine:  < 3 Vögel oder nur 1 Züchter
 */
public enum Medaille {
    GOLD("G", "Gold", 7, 2),
    SILBER("S", "Silber", 5, 2),
    BRONZE("B", "Bronze", 3, 2),
    KEINE(null, "Keine Medaille", 0, 0);

    private final String altCode;      // Code aus Altanwendung
    private final String bezeichnung;
    private final int minVoegel;       // Mindestanzahl Vögel in der Klasse
    private final int minZuechter;     // Mindestanzahl Züchter in der Klasse

    Medaille(String altCode, String bezeichnung, int minVoegel, int minZuechter) {
        this.altCode = altCode;
        this.bezeichnung = bezeichnung;
        this.minVoegel = minVoegel;
        this.minZuechter = minZuechter;
    }

    public String getAltCode() { return altCode; }
    public String getBezeichnung() { return bezeichnung; }
    public int getMinVoegel() { return minVoegel; }
    public int getMinZuechter() { return minZuechter; }

    public static Medaille vonAltCode(String code) {
        if (code == null) return KEINE;
        for (Medaille m : values()) {
            if (code.equals(m.altCode)) return m;
        }
        return KEINE;
    }

    /**
     * Berechnet die Medaille anhand der Klassen-Statistik.
     */
    public static Medaille berechnen(int anzahlVoegel, int anzahlZuechter) {
        if (anzahlZuechter < 2) return KEINE;
        if (anzahlVoegel >= 7) return GOLD;
        if (anzahlVoegel >= 5) return SILBER;
        if (anzahlVoegel >= 3) return BRONZE;
        return KEINE;
    }
}
