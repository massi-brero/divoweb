package de.divowin.schauverwaltung.enums;

/**
 * Sonderkennzeichen für die Platzierung – entspricht Feld "FkNe" in der Altanwendung.
 */
public enum Platzierungskennzeichen {

    /** Kein Sonderkennzeichen – Vogel wurde normal gewertet */
    NORMAL(null),

    /** NE = Nicht Eingeliefert – Vogel gemeldet aber nicht angeliefert */
    NICHT_EINGELIEFERT("NE"),

    /** FK = Falsche Klasse – Vogel in falscher Klasse gemeldet, wird nicht gewertet */
    FALSCHE_KLASSE("FK");

    private final String altCode;

    Platzierungskennzeichen(String altCode) {
        this.altCode = altCode;
    }

    public String getAltCode() { return altCode; }

    public static Platzierungskennzeichen vonAltCode(String code) {
        if (code == null || code.isBlank()) return NORMAL;
        for (Platzierungskennzeichen k : values()) {
            if (code.equalsIgnoreCase(k.altCode)) return k;
        }
        return NORMAL;
    }
}
