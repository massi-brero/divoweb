package de.divowin.schauverwaltung.enums;

/**
 * Züchterverbände – entspricht dem Feld "Sparte" in der Altanwendung.
 */
public enum Verband {

    DWV("DWV", "Deutschen Wellensittichverband"),
    AZ("AZ", "Verband Deutschsprachiger Vogelzüchter"),
    AGZ("AGZ", "Allgemeine Gesellschaft der Züchter"),
    AEZ("AEZ", "Vereinigung europäischer Züchter"),
    AEV("AEV", "Vereinigung europäischer Vogelpfleger"),
    AFZ("AFZ", "Verband der Farbenzüchter"),
    WSC("WSC", "Wellensittich-Spezialclub"),
    DKB("DKB", "Deutschen Kanarienzüchterbund"),
    INTERNATIONAL("INT", "Internationaler Aussteller");

    private final String kuerzel;
    private final String vollname;

    Verband(String kuerzel, String vollname) {
        this.kuerzel = kuerzel;
        this.vollname = vollname;
    }

    public String getKuerzel() { return kuerzel; }
    public String getVollname() { return vollname; }
}
