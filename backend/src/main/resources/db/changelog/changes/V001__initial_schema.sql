-- V001__initial_schema.sql
-- DivoWin Schauverwaltung – vollständiges Datenbankschema
-- Erzeugt für PostgreSQL 15+

-- Sequences
CREATE SEQUENCE schau_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE richter_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE zuecher_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE vogelklasse_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE schauanmeldung_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE standgeld_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE sieger_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE zuecher_platzierung_seq START WITH 1 INCREMENT BY 1;

-- ── schau ──────────────────────────────────────────────────
CREATE TABLE schau (
    id                      BIGINT PRIMARY KEY DEFAULT nextval('schau_seq'),
    schautyp                VARCHAR(20)     NOT NULL,
    jahr                    INTEGER         NOT NULL,
    ort                     VARCHAR(200)    NOT NULL,
    verband                 VARCHAR(20)     NOT NULL,
    standgeld_pro_vogel     NUMERIC(6,2)    NOT NULL DEFAULT 2.50,
    status                  VARCHAR(30)     NOT NULL DEFAULT 'VORBEREITUNG',
    notizen                 TEXT,
    erstellt_am             TIMESTAMP       NOT NULL DEFAULT CURRENT_TIMESTAMP,
    geaendert_am            TIMESTAMP,
    version                 BIGINT          DEFAULT 0
);
CREATE UNIQUE INDEX uq_schau_typ_jahr_verband ON schau(schautyp, jahr, verband);
CREATE INDEX idx_schau_jahr ON schau(jahr);
CREATE INDEX idx_schau_typ  ON schau(schautyp);

-- ── richter ────────────────────────────────────────────────
CREATE TABLE richter (
    id           BIGINT PRIMARY KEY DEFAULT nextval('richter_seq'),
    schau_id     BIGINT          NOT NULL REFERENCES schau(id),
    position     INTEGER         NOT NULL,
    nachname     VARCHAR(100)    NOT NULL,
    vorname      VARCHAR(100),
    erstellt_am  TIMESTAMP       NOT NULL DEFAULT CURRENT_TIMESTAMP,
    geaendert_am TIMESTAMP,
    version      BIGINT          DEFAULT 0
);
CREATE INDEX idx_richter_schau    ON richter(schau_id);
CREATE INDEX idx_richter_nachname ON richter(nachname);

-- ── zuecher ────────────────────────────────────────────────
-- Erweiterung gegenüber Original: plz, telefon
CREATE TABLE zuecher (
    id                      BIGINT PRIMARY KEY DEFAULT nextval('zuecher_seq'),
    verbandsnummer          VARCHAR(20)     NOT NULL,
    verband                 VARCHAR(20)     NOT NULL DEFAULT 'DWV',
    nachname                VARCHAR(100)    NOT NULL,
    vorname                 VARCHAR(100),
    strasse                 VARCHAR(200),
    plz                     VARCHAR(15),
    wohnort                 VARCHAR(100),
    land                    VARCHAR(50),
    telefon                 VARCHAR(30),
    katalog_einverstaendnis BOOLEAN         NOT NULL DEFAULT FALSE,
    erstellt_am             TIMESTAMP       NOT NULL DEFAULT CURRENT_TIMESTAMP,
    geaendert_am            TIMESTAMP,
    version                 BIGINT          DEFAULT 0
);
CREATE INDEX idx_zuecher_verbandsnummer ON zuecher(verbandsnummer);
CREATE INDEX idx_zuecher_nachname       ON zuecher(nachname);

-- ── vogelklasse ────────────────────────────────────────────
-- Unique constraint NULL-sicher über COALESCE
CREATE TABLE vogelklasse (
    id                 BIGINT PRIMARY KEY DEFAULT nextval('vogelklasse_seq'),
    skl1               VARCHAR(20)  NOT NULL,
    skl2               VARCHAR(20),
    skl3               VARCHAR(20),
    farbe1             VARCHAR(150) NOT NULL,
    farbe2             VARCHAR(150),
    zusatzbezeichnung  VARCHAR(200),
    dunkelfarbe        BOOLEAN      NOT NULL DEFAULT FALSE,
    erstellt_am        TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    geaendert_am       TIMESTAMP,
    version            BIGINT       DEFAULT 0
);
CREATE UNIQUE INDEX uq_vogelklasse_schluessel
    ON vogelklasse(skl1, COALESCE(skl2,''), COALESCE(skl3,''));
CREATE INDEX idx_vogelklasse_skl1 ON vogelklasse(skl1);

-- ── schauanmeldung ─────────────────────────────────────────
CREATE TABLE schauanmeldung (
    id                            BIGINT PRIMARY KEY DEFAULT nextval('schauanmeldung_seq'),
    schau_id                      BIGINT          NOT NULL REFERENCES schau(id),
    zuecher_id                    BIGINT          NOT NULL REFERENCES zuecher(id),
    vogelklasse_id                BIGINT          NOT NULL REFERENCES vogelklasse(id),
    richter_id                    BIGINT          REFERENCES richter(id),
    kaefig_nummer                 INTEGER         NOT NULL,
    geschlecht                    VARCHAR(10)     NOT NULL DEFAULT 'UNBEKANNT',
    ring_nummer                   VARCHAR(50),
    zuchtjahr                     INTEGER,
    eingeliefert                  BOOLEAN         NOT NULL DEFAULT TRUE,
    platzierung                   INTEGER,
    platzierungskennzeichen       VARCHAR(25)     DEFAULT 'NORMAL',
    medaille                      VARCHAR(10)     DEFAULT 'KEINE',
    anzahl_voegel_in_klasse       INTEGER,
    anzahl_zuecher_in_klasse      INTEGER,
    klasse_zusatzbezeichnung      VARCHAR(200),
    punkte_platz                  NUMERIC(10,4),
    punkte_schausieger_gegner     NUMERIC(10,4),
    punkte_schaugruppe            NUMERIC(10,4),
    punkte_schaugruppe_gegner     NUMERIC(10,4),
    punkte_gruppensieger          NUMERIC(10,4),
    punkte_gruppensieger_gegner   NUMERIC(10,4),
    punkte_schwerpunktfarbe       NUMERIC(10,4),
    punkte_schwerpunktfarbe_gegner NUMERIC(10,4),
    punkte_gesamt                 NUMERIC(10,4),
    heller_gruppe                 VARCHAR(20),
    ch_standard                   VARCHAR(20),
    erstellt_am                   TIMESTAMP       NOT NULL DEFAULT CURRENT_TIMESTAMP,
    geaendert_am                  TIMESTAMP,
    version                       BIGINT          DEFAULT 0
);
CREATE UNIQUE INDEX uq_anmeldung_schau_kaefig ON schauanmeldung(schau_id, kaefig_nummer);
CREATE INDEX idx_anmeldung_schau    ON schauanmeldung(schau_id);
CREATE INDEX idx_anmeldung_zuecher  ON schauanmeldung(zuecher_id);
CREATE INDEX idx_anmeldung_klasse   ON schauanmeldung(vogelklasse_id);
CREATE INDEX idx_anmeldung_kaefig   ON schauanmeldung(schau_id, kaefig_nummer);

-- ── standgeld ──────────────────────────────────────────────
CREATE TABLE standgeld (
    id                   BIGINT PRIMARY KEY DEFAULT nextval('standgeld_seq'),
    schau_id             BIGINT         NOT NULL REFERENCES schau(id),
    zuecher_id           BIGINT         NOT NULL REFERENCES zuecher(id),
    anzahl_gemeldet      INTEGER        NOT NULL DEFAULT 0,
    anzahl_eingeliefert  INTEGER        NOT NULL DEFAULT 0,
    standgeld_pro_vogel  NUMERIC(6,2)   NOT NULL DEFAULT 2.50,
    gesamtbetrag         NUMERIC(10,2)  NOT NULL DEFAULT 0.00,
    bezahlt              BOOLEAN        NOT NULL DEFAULT FALSE,
    erstellt_am          TIMESTAMP      NOT NULL DEFAULT CURRENT_TIMESTAMP,
    geaendert_am         TIMESTAMP,
    version              BIGINT         DEFAULT 0
);
CREATE UNIQUE INDEX uq_standgeld_schau_zuecher ON standgeld(schau_id, zuecher_id);
CREATE INDEX idx_standgeld_schau   ON standgeld(schau_id);
CREATE INDEX idx_standgeld_zuecher ON standgeld(zuecher_id);

-- ── sieger ─────────────────────────────────────────────────
CREATE TABLE sieger (
    id                  BIGINT PRIMARY KEY DEFAULT nextval('sieger_seq'),
    schau_id            BIGINT          NOT NULL REFERENCES schau(id),
    zuecher_id          BIGINT          NOT NULL REFERENCES zuecher(id),
    anmeldung_id        BIGINT          REFERENCES schauanmeldung(id),
    kategorie           VARCHAR(200)    NOT NULL,
    position            INTEGER,
    beschreibung        TEXT,
    manuell_eingetragen BOOLEAN         NOT NULL DEFAULT TRUE,
    erstellt_am         TIMESTAMP       NOT NULL DEFAULT CURRENT_TIMESTAMP,
    geaendert_am        TIMESTAMP,
    version             BIGINT          DEFAULT 0
);
CREATE INDEX idx_sieger_schau     ON sieger(schau_id);
CREATE INDEX idx_sieger_zuecher   ON sieger(zuecher_id);
CREATE INDEX idx_sieger_kategorie ON sieger(kategorie);

-- ── zuecher_platzierung ────────────────────────────────────
-- Erweiterung gegenüber Original: anzahl_kaefige, anzahl_platz_1..7
CREATE TABLE zuecher_platzierung (
    id                          BIGINT PRIMARY KEY DEFAULT nextval('zuecher_platzierung_seq'),
    schau_id                    BIGINT          NOT NULL REFERENCES schau(id),
    zuecher_id                  BIGINT          NOT NULL REFERENCES zuecher(id),
    rang                        INTEGER,
    zuecher_stufe               INTEGER,
    medaillen_gold              INTEGER         NOT NULL DEFAULT 0,
    medaillen_silber            INTEGER         NOT NULL DEFAULT 0,
    medaillen_bronze            INTEGER         NOT NULL DEFAULT 0,
    ist_schausieger             BOOLEAN         NOT NULL DEFAULT FALSE,
    ist_schaugruppensieger      BOOLEAN         NOT NULL DEFAULT FALSE,
    ist_gruppensieger           BOOLEAN         NOT NULL DEFAULT FALSE,
    punkte_gesamt               NUMERIC(12,4)   DEFAULT 0,
    anzahl_voegel_gemeldet      INTEGER         NOT NULL DEFAULT 0,
    anzahl_voegel_eingeliefert  INTEGER         NOT NULL DEFAULT 0,
    anzahl_voegel_platziert     INTEGER         NOT NULL DEFAULT 0,
    anzahl_kaefige              INTEGER         NOT NULL DEFAULT 0,
    anzahl_platz_1              INTEGER         NOT NULL DEFAULT 0,
    anzahl_platz_2              INTEGER         NOT NULL DEFAULT 0,
    anzahl_platz_3              INTEGER         NOT NULL DEFAULT 0,
    anzahl_platz_4              INTEGER         NOT NULL DEFAULT 0,
    anzahl_platz_5              INTEGER         NOT NULL DEFAULT 0,
    anzahl_platz_6              INTEGER         NOT NULL DEFAULT 0,
    anzahl_platz_7              INTEGER         NOT NULL DEFAULT 0,
    erstellt_am                 TIMESTAMP       NOT NULL DEFAULT CURRENT_TIMESTAMP,
    geaendert_am                TIMESTAMP,
    version                     BIGINT          DEFAULT 0
);
CREATE UNIQUE INDEX uq_zuecher_platzierung ON zuecher_platzierung(schau_id, zuecher_id);
CREATE INDEX idx_zuechpl_schau   ON zuecher_platzierung(schau_id);
CREATE INDEX idx_zuechpl_zuecher ON zuecher_platzierung(zuecher_id);
CREATE INDEX idx_zuechpl_rang    ON zuecher_platzierung(schau_id, rang);
