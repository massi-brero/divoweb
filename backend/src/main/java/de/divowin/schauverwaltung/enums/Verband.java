package de.divowin.schauverwaltung.enums;

/**
 * Züchterverbände – entspricht dem Feld "Sparte" in der Altanwendung.
 *
 * Erweiterung gegenüber Original: alle in den Schaudaten vorkommenden
 * Verbände wurden ergänzt (OWV, KCHA, ZEWA, DSV, AFO, OKB, FU, SWV, SLO, EF).
 * Umlaute im Kürzel werden für Enum-Namen normalisiert (Ö→O, Ü→U, Ä→A),
 * der original Kürzel-String bleibt in getKuerzel() erhalten.
 */
public enum Verband {

    // ── Deutschsprachige Hauptverbände ──────────────────────
    DWV("DWV",    "Deutschen Wellensittichverband"),
    AZ("AZ",      "Verband Deutschsprachiger Vogelzüchter"),
    AGZ("AGZ",    "Allgemeine Gesellschaft der Züchter"),
    DSV("DSV",    "Deutschsprachiger Wellensittichverband"),

    // ── Österreich / Schweiz ────────────────────────────────
    OWV("ÖWV",    "Österreichischer Wellensittichverband"),
    OKB("ÖKB",    "Österreichischer Kanarienzüchterbund"),
    SWV("SWV",    "Schweizerischer Wellensittichverband"),
    KCHA("KCHA",  "Kanarien-Club der Schweiz / Honoured Clubs"),
    ZEWA("ZEWA",  "Zentraleuropäischer Wellensittich-Verband"),

    // ── Internationale Verbände ─────────────────────────────
    AEZ("AEZ",    "Vereinigung europäischer Züchter"),
    AEV("AEV",    "Vereinigung europäischer Vogelpfleger"),
    AFZ("AFZ",    "Verband der Farbenzüchter"),
    AFO("AFO",    "Association Française d'Ornithologie"),
    EF("EF",      "Europäischer Finkenzüchter-Verband"),
    FU("FU",      "Fédération Universelle"),
    SLO("SLO",    "Slowenischer Züchterverband"),

    // ── Spezialclubs ────────────────────────────────────────
    WSC("WSC",    "Wellensittich-Spezialclub"),
    DKB("DKB",    "Deutschen Kanarienzüchterbund"),

    // ── Fallback ────────────────────────────────────────────
    SONSTIGE("SONSTIGE", "Sonstiger / Unbekannter Verband");

    private final String kuerzel;
    private final String vollname;

    Verband(String kuerzel, String vollname) {
        this.kuerzel  = kuerzel;
        this.vollname = vollname;
    }

    public String getKuerzel()  { return kuerzel; }
    public String getVollname() { return vollname; }

    /**
     * Sucht anhand des Kürzels – case-insensitive, Umlaut-normalisiert.
     * "ÖWV" findet OWV, "owv" findet OWV.
     */
    public static Verband vonKuerzel(String kuerzel) {
        if (kuerzel == null || kuerzel.isBlank()) return SONSTIGE;
        String n = normalize(kuerzel.trim().toUpperCase());
        for (Verband v : values()) {
            if (normalize(v.name()).equals(n) || normalize(v.kuerzel.toUpperCase()).equals(n))
                return v;
        }
        return SONSTIGE;
    }

    private static String normalize(String s) {
        return s.replace("Ö","O").replace("Ü","U").replace("Ä","A");
    }
}
