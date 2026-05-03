-- V005__import_schauanmeldungen.sql
-- Vogel-/Käfigdaten aus allen *Schaudaten.DB-Dateien

-- Helper-Funktion: Zuecher-ID per verbandsnummer
-- Helper-Funktion: Vogelklasse-ID per skl1/skl2/skl3

-- ── B2025Schaudaten.csv (Schau-ID 1) ──
-- 0 Anmeldungen aus B2025Schaudaten.csv

-- ── E2025Schaudaten.csv (Schau-ID 2) ──
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  1, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '10294'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 1
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  2, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'BRONZE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '10294'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 2
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  3, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '10294'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 3
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  4, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '10294'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 4
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  4, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '10294'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 4
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  5, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'BRONZE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '10294'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 5
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  6, 'WEIBLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '10294'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 6
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  7, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '10294'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 7
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  7, 'WEIBLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '10294'
  AND vk.skl1 = '4'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 7
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  8, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '10294'
  AND vk.skl1 = '5'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 8
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  9, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'BRONZE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '10294'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 9
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  10, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '10294'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 10
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  10, 'WEIBLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '10294'
  AND vk.skl1 = '13'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 10
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  11, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '10294'
  AND vk.skl1 = '13'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 11
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  12, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '10294'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 12
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  13, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '48576'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 13
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  13, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'BRONZE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '48576'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 13
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  14, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '48576'
  AND vk.skl1 = '29'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 14
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  15, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '48576'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 15
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  16, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '48576'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 16
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  16, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'BRONZE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '48576'
  AND vk.skl1 = '14'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 16
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  17, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '48576'
  AND vk.skl1 = '34'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 17
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  18, 'MAENNLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '48576'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 18
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  19, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '48576'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 19
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  19, 'WEIBLICH', NULL, NULL, TRUE,
  6, 'NORMAL', 'KEINE',
  6.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '48576'
  AND vk.skl1 = '7'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 19
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  20, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '48576'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 20
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  21, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '48576'
  AND vk.skl1 = '14'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 21
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  22, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '48576'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 22
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  22, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '48576'
  AND vk.skl1 = '37'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 22
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  23, 'MAENNLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '48576'
  AND vk.skl1 = '21'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 23
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  24, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'BRONZE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '48576'
  AND vk.skl1 = '14'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 24
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  25, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51778'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 25
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  25, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51778'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 25
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  26, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51778'
  AND vk.skl1 = '36'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 26
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  27, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51778'
  AND vk.skl1 = '8'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 27
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  28, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51778'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 28
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  28, 'WEIBLICH', NULL, NULL, TRUE,
  7, 'NORMAL', 'KEINE',
  7.0000, NULL, NULL, NULL, 4.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51778'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 28
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  29, 'WEIBLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51778'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 29
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  30, 'WEIBLICH', NULL, NULL, TRUE,
  7, 'NORMAL', 'KEINE',
  7.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51778'
  AND vk.skl1 = '24'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 30
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  31, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51778'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 31
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  31, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51778'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 31
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  32, 'WEIBLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51778'
  AND vk.skl1 = '21'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 32
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  33, 'MAENNLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51778'
  AND vk.skl1 = '21'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 33
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  34, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51778'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 34
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  34, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51778'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 34
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  35, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51778'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 35
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  36, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51778'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 36
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  37, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '7989'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 37
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  37, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '7989'
  AND vk.skl1 = '30'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 37
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  38, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '7989'
  AND vk.skl1 = '30'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 38
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  39, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '7989'
  AND vk.skl1 = '30'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 39
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  40, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '7989'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 40
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  40, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '7989'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 40
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  41, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '7989'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 41
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  42, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '7989'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 42
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  43, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '7989'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 43
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  43, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '7989'
  AND vk.skl1 = '18'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 43
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  44, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '7989'
  AND vk.skl1 = '18'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 44
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  45, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '31913'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 45
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  46, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '31913'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 46
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  46, 'MAENNLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '31913'
  AND vk.skl1 = '11'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 46
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  47, 'MAENNLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '31913'
  AND vk.skl1 = '14'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 47
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  48, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '31913'
  AND vk.skl1 = '33'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 48
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  49, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '31913'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 49
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  49, 'WEIBLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '31913'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 49
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  50, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '31913'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 50
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  51, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '31913'
  AND vk.skl1 = '13'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 51
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  52, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '31913'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 52
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  52, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '31913'
  AND vk.skl1 = '13'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 52
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  53, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '10'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 53
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  54, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 2.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '10'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 54
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  55, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 55
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  55, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '10'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 55
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  56, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'BRONZE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 56
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  57, 'MAENNLICH', NULL, NULL, TRUE,
  6, 'NORMAL', 'KEINE',
  6.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '7'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 57
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  58, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 58
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  58, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 58
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  59, 'MAENNLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 59
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  60, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 60
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  61, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 61
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  61, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 2.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '8'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 61
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  62, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'BRONZE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 62
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  63, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 63
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  64, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 64
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  64, 'MAENNLICH', NULL, NULL, TRUE,
  7, 'NORMAL', 'KEINE',
  7.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 64
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  65, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '8'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 65
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  66, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '30'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 66
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  67, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 67
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  67, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'BRONZE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '30'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 67
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  68, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'BRONZE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '30'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 68
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  69, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '30'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 69
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  70, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 70
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  70, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '32'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 70
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  71, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 71
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  72, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'BRONZE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '32'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 72
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  73, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 73
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  73, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '27'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 73
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  74, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '30'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 74
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  75, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '34'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 75
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  76, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 76
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  76, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '5'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 76
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  77, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '10'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 77
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  78, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '10'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 78
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  79, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 79
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  79, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '10'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 79
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  80, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 80
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  81, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '10'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 81
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  82, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 82
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  82, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 82
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  83, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 83
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  84, 'WEIBLICH', NULL, NULL, TRUE,
  7, 'NORMAL', 'KEINE',
  7.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2570'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 84
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  85, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51374'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 85
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  85, 'MAENNLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51374'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 85
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  86, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51374'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 86
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  87, 'MAENNLICH', NULL, NULL, TRUE,
  7, 'NORMAL', 'KEINE',
  7.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51374'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 87
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  88, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51374'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 88
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  88, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51374'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 88
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  89, 'MAENNLICH', NULL, NULL, TRUE,
  6, 'NORMAL', 'KEINE',
  6.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51374'
  AND vk.skl1 = '21'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 89
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  90, 'MAENNLICH', NULL, NULL, TRUE,
  7, 'NORMAL', 'KEINE',
  7.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51374'
  AND vk.skl1 = '21'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 90
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  91, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51374'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 91
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  91, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51374'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 91
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  92, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51374'
  AND vk.skl1 = '28'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 92
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  93, 'WEIBLICH', NULL, NULL, TRUE,
  6, 'NORMAL', 'KEINE',
  6.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51374'
  AND vk.skl1 = '21'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 93
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  94, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 94
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  94, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '11'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 94
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  95, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 2.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 95
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  96, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'BRONZE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 96
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  97, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 97
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  97, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '17'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 97
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  98, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 4.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '10'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 98
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  99, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 2.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '9'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 99
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  100, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 100
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  100, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '15'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 100
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  101, 'MAENNLICH', NULL, NULL, TRUE,
  7, 'NORMAL', 'KEINE',
  7.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 101
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  102, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 3.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 102
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  103, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 103
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  103, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 103
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  104, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 2.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 104
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  105, 'MAENNLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '7'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 105
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  106, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 106
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  106, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '32'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 106
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  107, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 107
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  108, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'BRONZE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '32'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 108
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  109, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 109
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  109, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'BRONZE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '21'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 109
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  110, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'BRONZE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 110
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  111, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 111
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  112, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 112
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  112, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 112
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  113, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '27'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 113
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  114, 'WEIBLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '4'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 114
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  115, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 115
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  115, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'BRONZE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 115
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  116, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 3.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '15'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 116
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  117, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '11'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 117
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  118, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 118
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  118, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '4'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 118
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  119, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'BRONZE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 119
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  120, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '9'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 120
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  121, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 121
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  121, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 121
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  122, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 122
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  123, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 123
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  124, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 124
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  124, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 3.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 124
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  125, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '21'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 125
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  126, 'MAENNLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 126
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  127, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 127
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  127, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'BRONZE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '27'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 127
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  128, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 4.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 128
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  129, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '21'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 129
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  130, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 130
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  130, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 3.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 130
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  131, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 131
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  132, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 132
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  133, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 133
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  133, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '14'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 133
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  134, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 134
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  135, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 135
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  136, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 136
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  136, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 136
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  137, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 137
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  138, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 138
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  139, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 139
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  139, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 139
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  140, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 140
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  141, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 141
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  142, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 142
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  142, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 142
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  143, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '125'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 143
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  144, 'MAENNLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3653'
  AND vk.skl1 = '10'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 144
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  145, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3653'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 145
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  145, 'MAENNLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3653'
  AND vk.skl1 = '10'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 145
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  146, 'MAENNLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3653'
  AND vk.skl1 = '10'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 146
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  147, 'MAENNLICH', NULL, NULL, TRUE,
  7, 'NORMAL', 'KEINE',
  7.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3653'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 147
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  148, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3653'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 148
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  148, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3653'
  AND vk.skl1 = '16'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 148
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  149, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3653'
  AND vk.skl1 = '10'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 149
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  150, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3653'
  AND vk.skl1 = '10'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 150
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  151, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3653'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 151
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  151, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3653'
  AND vk.skl1 = '16'
  AND COALESCE(vk.skl2,'') = '4'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 151
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  152, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3653'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 152
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  153, 'MAENNLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3653'
  AND vk.skl1 = '30'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 153
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  154, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3653'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 154
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  154, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3653'
  AND vk.skl1 = '36'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 154
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  155, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3653'
  AND vk.skl1 = '36'
  AND COALESCE(vk.skl2,'') = '4'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 155
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  156, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '214'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 156
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  157, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '214'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 157
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  157, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 3.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '214'
  AND vk.skl1 = '31'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 157
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  158, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 2.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '214'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 158
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  159, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '214'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 159
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  160, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '214'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 160
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  160, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '214'
  AND vk.skl1 = '4'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 160
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  161, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '214'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 161
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  162, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '214'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 162
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  163, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '214'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 163
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  163, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'BRONZE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '214'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 163
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  164, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '214'
  AND vk.skl1 = '21'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 164
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  165, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '214'
  AND vk.skl1 = '14'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 165
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  166, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '214'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 166
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  166, 'WEIBLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '214'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 166
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  167, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '214'
  AND vk.skl1 = '4'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 167
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  168, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '214'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 168
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  169, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '214'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 169
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  169, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '214'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 169
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  170, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '214'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 170
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  171, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '214'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 171
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  172, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '214'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 172
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  172, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '214'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 172
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  173, 'MAENNLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '214'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 173
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  174, 'MAENNLICH', NULL, NULL, TRUE,
  6, 'NORMAL', 'KEINE',
  6.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '214'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 174
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  175, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '214'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 175
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  175, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '214'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 175
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  176, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '214'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 176
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  177, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '214'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 177
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  178, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '214'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 178
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  178, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '214'
  AND vk.skl1 = '17'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 178
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  179, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 3.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '214'
  AND vk.skl1 = '17'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 179
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  180, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '214'
  AND vk.skl1 = '17'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 180
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  181, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '798'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 181
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  181, 'WEIBLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '798'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 181
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  182, 'MAENNLICH', NULL, NULL, TRUE,
  6, 'NORMAL', 'KEINE',
  6.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '798'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 182
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  183, 'MAENNLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '798'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 183
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  184, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '798'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 184
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  184, 'MAENNLICH', NULL, NULL, TRUE,
  6, 'NORMAL', 'KEINE',
  6.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '798'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 184
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  185, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '798'
  AND vk.skl1 = '34'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 185
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  186, 'WEIBLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '798'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 186
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  187, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '798'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 187
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  187, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '798'
  AND vk.skl1 = '24'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 187
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  188, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '798'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 188
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  189, 'MAENNLICH', NULL, NULL, TRUE,
  6, 'NORMAL', 'KEINE',
  6.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '798'
  AND vk.skl1 = '30'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 189
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  190, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '798'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 190
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  190, 'MAENNLICH', NULL, NULL, TRUE,
  6, 'NORMAL', 'KEINE',
  6.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '798'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 190
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  191, 'MAENNLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '798'
  AND vk.skl1 = '30'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 191
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  192, 'MAENNLICH', NULL, NULL, TRUE,
  6, 'NORMAL', 'KEINE',
  6.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '798'
  AND vk.skl1 = '27'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 192
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  193, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '798'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 193
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  193, 'MAENNLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '798'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 193
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  194, 'MAENNLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '798'
  AND vk.skl1 = '32'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 194
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  195, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '798'
  AND vk.skl1 = '32'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 195
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  196, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '798'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 196
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  196, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '798'
  AND vk.skl1 = '30'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 196
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  197, 'WEIBLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '798'
  AND vk.skl1 = '34'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 197
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  198, 'WEIBLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '798'
  AND vk.skl1 = '27'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 198
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  199, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '798'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 199
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  199, 'WEIBLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '798'
  AND vk.skl1 = '33'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 199
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  200, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '798'
  AND vk.skl1 = '27'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 200
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  201, 'WEIBLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '798'
  AND vk.skl1 = '30'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 201
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  202, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '798'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 202
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  202, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '798'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 202
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  203, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '798'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 203
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  204, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '798'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 204
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  205, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '798'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 205
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  205, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '798'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 205
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  206, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '311'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 206
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  207, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '311'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 207
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  208, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '311'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 208
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  208, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '311'
  AND vk.skl1 = '11'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 208
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  209, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '311'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 209
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  210, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '311'
  AND vk.skl1 = '31'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 210
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  211, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '311'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 211
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  211, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '311'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 211
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  212, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '311'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 212
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  213, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '311'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 213
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  214, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '311'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 214
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  214, 'MAENNLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '311'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 214
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  215, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '311'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 215
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  216, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'BRONZE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '311'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 216
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  217, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '311'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 217
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  217, 'MAENNLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '311'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 217
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  218, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '311'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 218
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  219, 'WEIBLICH', NULL, NULL, TRUE,
  7, 'NORMAL', 'KEINE',
  7.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '311'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 219
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  220, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '311'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 220
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  220, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '311'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 220
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  221, 'WEIBLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '311'
  AND vk.skl1 = '11'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 221
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  222, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '311'
  AND vk.skl1 = '11'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 222
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  223, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '311'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 223
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  223, 'WEIBLICH', NULL, NULL, TRUE,
  7, 'NORMAL', 'KEINE',
  7.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '311'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 223
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  224, 'WEIBLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '311'
  AND vk.skl1 = '24'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 224
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  225, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '311'
  AND vk.skl1 = '33'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 225
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  226, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13576'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 226
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  226, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13576'
  AND vk.skl1 = '13'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 226
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  227, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13576'
  AND vk.skl1 = '16'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 227
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  228, 'MAENNLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13576'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 228
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  229, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13576'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 229
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  229, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'BRONZE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13576'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 229
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  230, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 3.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13576'
  AND vk.skl1 = '16'
  AND COALESCE(vk.skl2,'') = '4'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 230
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  231, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 2.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13576'
  AND vk.skl1 = '36'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 231
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  232, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13576'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 232
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  232, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13576'
  AND vk.skl1 = '35'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 232
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  233, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13576'
  AND vk.skl1 = '16'
  AND COALESCE(vk.skl2,'') = '4'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 233
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  234, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13576'
  AND vk.skl1 = '16'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 234
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  235, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13576'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 235
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  235, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13576'
  AND vk.skl1 = '9'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 235
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  236, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13576'
  AND vk.skl1 = '16'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 236
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  237, 'WEIBLICH', NULL, NULL, TRUE,
  7, 'NORMAL', 'KEINE',
  7.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13576'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 237
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  238, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13576'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 238
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  238, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13576'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 238
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  239, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'BRONZE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13576'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 239
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  240, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13576'
  AND vk.skl1 = '35'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 240
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  241, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13576'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 241
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  241, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 2.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13576'
  AND vk.skl1 = '38'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 241
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  242, 'MAENNLICH', NULL, NULL, TRUE,
  6, 'NORMAL', 'KEINE',
  6.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '8407'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 242
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  243, 'WEIBLICH', NULL, NULL, TRUE,
  6, 'NORMAL', 'KEINE',
  6.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '8407'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 243
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  244, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '8407'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 244
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  244, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 2.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '8407'
  AND vk.skl1 = '9'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 244
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  245, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '8407'
  AND vk.skl1 = '21'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 245
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  246, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '8407'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 246
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  247, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '8407'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 247
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  247, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '8407'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 247
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  248, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '8407'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 248
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  249, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '8407'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 249
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  250, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '95'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 250
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  250, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '95'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 250
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  251, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '95'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 251
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  252, 'MAENNLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '95'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 252
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  253, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '95'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 253
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  253, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '95'
  AND vk.skl1 = '14'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 253
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  254, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '95'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 254
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  255, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '95'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 255
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  256, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '95'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 256
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  256, 'WEIBLICH', NULL, NULL, TRUE,
  6, 'NORMAL', 'KEINE',
  6.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '95'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 256
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  257, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '95'
  AND vk.skl1 = '25'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 257
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  258, 'MAENNLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '7290'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 258
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  259, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '7290'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 259
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  259, 'MAENNLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '7290'
  AND vk.skl1 = '7'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 259
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  260, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '7290'
  AND vk.skl1 = '16'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 260
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  261, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '7290'
  AND vk.skl1 = '36'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 261
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  262, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '7290'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 262
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  262, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 2.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '7290'
  AND vk.skl1 = '36'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 262
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  263, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '7290'
  AND vk.skl1 = '15'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 263
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  264, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '7290'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 264
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  265, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '7290'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 265
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  265, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '7290'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 265
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  266, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '16961'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 266
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  267, 'MAENNLICH', NULL, NULL, TRUE,
  6, 'NORMAL', 'KEINE',
  6.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '16961'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 267
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  268, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '16961'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 268
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  268, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'BRONZE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '16961'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 268
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  269, 'MAENNLICH', NULL, NULL, TRUE,
  7, 'NORMAL', 'KEINE',
  7.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '16961'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 269
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  270, 'MAENNLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '16961'
  AND vk.skl1 = '7'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 270
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  271, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '16961'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 271
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  271, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '16961'
  AND vk.skl1 = '16'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 271
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  272, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '16961'
  AND vk.skl1 = '27'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 272
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  273, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '16961'
  AND vk.skl1 = '28'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 273
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  274, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '16961'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 274
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  274, 'MAENNLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '16961'
  AND vk.skl1 = '30'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 274
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  275, 'WEIBLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '16961'
  AND vk.skl1 = '7'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 275
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  276, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '16961'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 276
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  277, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '16961'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 277
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  277, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '16961'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 277
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  278, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '16961'
  AND vk.skl1 = '25'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 278
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  279, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '16961'
  AND vk.skl1 = '29'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 279
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  280, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '16961'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 280
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  280, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '16961'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 280
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  281, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '16961'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 281
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  282, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13526'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 282
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  283, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13526'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 283
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  283, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13526'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 283
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  284, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13526'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 284
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  285, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13526'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 285
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  286, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13526'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 286
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  286, 'MAENNLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13526'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 286
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  287, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'BRONZE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13526'
  AND vk.skl1 = '32'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 287
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  288, 'MAENNLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13526'
  AND vk.skl1 = '33'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 288
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  289, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13526'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 289
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  289, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13526'
  AND vk.skl1 = '34'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 289
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  290, 'WEIBLICH', NULL, NULL, TRUE,
  6, 'NORMAL', 'KEINE',
  6.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13526'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 290
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  291, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 2.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13526'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 291
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  292, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13526'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 292
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  292, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13526'
  AND vk.skl1 = '13'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 292
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  293, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13526'
  AND vk.skl1 = '14'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 293
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  294, 'WEIBLICH', NULL, NULL, TRUE,
  6, 'NORMAL', 'KEINE',
  6.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13526'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 294
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  295, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13526'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 295
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  295, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13526'
  AND vk.skl1 = '33'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 295
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  296, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13526'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 296
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  297, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13526'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 297
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  298, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13526'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 298
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  298, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13526'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 298
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  299, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13526'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 299
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  300, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13526'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 300
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  301, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13526'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 301
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  301, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13526'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 301
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  304, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '25181'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 304
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  307, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '25181'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 307
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  310, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '25181'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 310
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  314, 'MAENNLICH', NULL, NULL, TRUE,
  6, 'NORMAL', 'KEINE',
  6.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '23424'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 314
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  315, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '23424'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 315
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  316, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '23424'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 316
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  316, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '23424'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 316
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  317, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '23424'
  AND vk.skl1 = '32'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 317
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  318, 'MAENNLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '23424'
  AND vk.skl1 = '32'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 318
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  319, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '23424'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 319
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  319, 'MAENNLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '23424'
  AND vk.skl1 = '32'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 319
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  320, 'MAENNLICH', NULL, NULL, TRUE,
  6, 'NORMAL', 'KEINE',
  6.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '23424'
  AND vk.skl1 = '32'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 320
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  321, 'MAENNLICH', NULL, NULL, TRUE,
  7, 'NORMAL', 'KEINE',
  7.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '23424'
  AND vk.skl1 = '32'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 321
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  322, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '23424'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 322
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  322, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '23424'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 322
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  323, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '23424'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 323
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  324, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '23424'
  AND vk.skl1 = '32'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 324
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  325, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '23424'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 325
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  325, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '23424'
  AND vk.skl1 = '32'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 325
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  326, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '23424'
  AND vk.skl1 = '32'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 326
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  327, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '23424'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 327
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  328, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '1919'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 328
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  328, 'MAENNLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '1919'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 328
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  329, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '1919'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 329
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  330, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '1919'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 330
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  331, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '1919'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 331
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  331, 'MAENNLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '1919'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 331
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  332, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '1919'
  AND vk.skl1 = '21'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 332
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  333, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '1919'
  AND vk.skl1 = '21'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 333
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  334, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '1919'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 334
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  334, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '1919'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 334
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  335, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '1919'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 335
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  336, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '34393'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 336
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  337, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '34393'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 337
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  337, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '34393'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 337
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  338, 'MAENNLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '34393'
  AND vk.skl1 = '9'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 338
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  339, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '34393'
  AND vk.skl1 = '9'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 339
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  340, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '34393'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 340
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  340, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '34393'
  AND vk.skl1 = '21'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 340
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  341, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '34393'
  AND vk.skl1 = '4'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 341
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  342, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '34393'
  AND vk.skl1 = '15'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 342
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  343, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '34393'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 343
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  343, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '34393'
  AND vk.skl1 = '35'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 343
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  344, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '47260'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 344
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  345, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '47260'
  AND vk.skl1 = '15'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 345
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  346, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '47260'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 346
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  346, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '47260'
  AND vk.skl1 = '16'
  AND COALESCE(vk.skl2,'') = '5'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 346
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  347, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '47260'
  AND vk.skl1 = '18'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 347
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  348, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '47260'
  AND vk.skl1 = '36'
  AND COALESCE(vk.skl2,'') = '5'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 348
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  349, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '47260'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 349
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  349, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '47260'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 349
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  350, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'BRONZE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '47260'
  AND vk.skl1 = '11'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 350
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  351, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '47260'
  AND vk.skl1 = '16'
  AND COALESCE(vk.skl2,'') = '5'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 351
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  352, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '47260'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 352
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  352, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '47260'
  AND vk.skl1 = '16'
  AND COALESCE(vk.skl2,'') = '5'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 352
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  353, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '47260'
  AND vk.skl1 = '25'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 353
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  354, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '47260'
  AND vk.skl1 = '35'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 354
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  355, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '47260'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 355
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  355, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '47260'
  AND vk.skl1 = '36'
  AND COALESCE(vk.skl2,'') = '5'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 355
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  356, 'MAENNLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '48664'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 356
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  357, 'MAENNLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '48664'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 357
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  358, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '48664'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 358
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  358, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '48664'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 358
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  359, 'MAENNLICH', NULL, NULL, TRUE,
  7, 'NORMAL', 'KEINE',
  7.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '48664'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 359
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  360, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '48664'
  AND vk.skl1 = '32'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 360
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  361, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '48664'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 361
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  361, 'MAENNLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '48664'
  AND vk.skl1 = '31'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 361
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  362, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '48664'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 362
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  363, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '48664'
  AND vk.skl1 = '11'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 363
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  364, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '49055'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 364
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  364, 'MAENNLICH', NULL, NULL, TRUE,
  7, 'NORMAL', 'KEINE',
  7.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '49055'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 364
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  365, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '49055'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 365
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  366, 'MAENNLICH', NULL, NULL, TRUE,
  6, 'NORMAL', 'KEINE',
  6.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '49055'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 366
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  367, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '49055'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 367
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  367, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '49055'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 367
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  368, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '49055'
  AND vk.skl1 = '7'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 368
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  369, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'BRONZE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '49055'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 369
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  370, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '49055'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 370
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  370, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '49055'
  AND vk.skl1 = '27'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 370
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  371, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '49055'
  AND vk.skl1 = '27'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 371
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  372, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'BRONZE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3902'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 372
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  373, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3902'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 373
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  373, 'MAENNLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3902'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 373
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  374, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3902'
  AND vk.skl1 = '4'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 374
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  375, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 3.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3902'
  AND vk.skl1 = '4'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 375
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  376, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3902'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 376
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  376, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3902'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 376
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  377, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 2.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3902'
  AND vk.skl1 = '5'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 377
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  378, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 2.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3902'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 378
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  379, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3902'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 379
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  379, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3902'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 379
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  380, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 3.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3902'
  AND vk.skl1 = '8'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 380
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  381, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3902'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 381
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  382, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3902'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 382
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  382, 'MAENNLICH', NULL, NULL, TRUE,
  7, 'NORMAL', 'KEINE',
  7.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3902'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 382
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  383, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'BRONZE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3902'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 383
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  384, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'BRONZE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3902'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 384
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  385, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3902'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 385
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  385, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3902'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 385
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  386, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3902'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 386
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  387, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3902'
  AND vk.skl1 = '31'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 387
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  388, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3902'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 388
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  388, 'WEIBLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3902'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 388
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  389, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3902'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 389
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  390, 'WEIBLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3902'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 390
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  391, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3902'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 391
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  391, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3902'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 391
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  392, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3902'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 392
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  393, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3902'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 393
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  394, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3902'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 394
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  394, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3902'
  AND vk.skl1 = '5'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 394
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  395, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3902'
  AND vk.skl1 = '4'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 395
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  396, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3902'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 396
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  397, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '10'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 397
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  397, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '10'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 397
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  398, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '10'
  AND vk.skl1 = '24'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 398
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  399, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '10'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 399
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  400, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '10'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 400
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  400, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '10'
  AND vk.skl1 = '24'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 400
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  401, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'BRONZE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '10'
  AND vk.skl1 = '24'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 401
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  402, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '10'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 402
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  403, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '10'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 403
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  403, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '10'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 403
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  404, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13528'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 404
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  405, 'MAENNLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13528'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 405
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  406, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13528'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 406
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  406, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13528'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 406
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  407, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13528'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 407
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  408, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13528'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 408
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  409, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13528'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 409
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  409, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 2.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13528'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 409
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  410, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13528'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 410
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  411, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13528'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 411
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  412, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13528'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 412
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  412, 'WEIBLICH', NULL, NULL, TRUE,
  6, 'NORMAL', 'KEINE',
  6.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13528'
  AND vk.skl1 = '32'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 412
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  413, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 2.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '13528'
  AND vk.skl1 = '13'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 413
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  414, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '40'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 414
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  415, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '40'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 415
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  415, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '40'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 415
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  416, 'WEIBLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '40'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 416
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  417, 'MAENNLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '19385'
  AND vk.skl1 = '11'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 417
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  418, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '19385'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 418
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  418, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '19385'
  AND vk.skl1 = '15'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 418
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  419, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 4.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '19385'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 419
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  420, 'WEIBLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '19385'
  AND vk.skl1 = '27'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 420
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  421, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '36381'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 421
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  421, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 2.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '36381'
  AND vk.skl1 = '4'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 421
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  422, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '36381'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 422
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  423, 'MAENNLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '36381'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 423
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  424, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '36381'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 424
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  424, 'MAENNLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '36381'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 424
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  425, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '36381'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 425
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  426, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 2.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '36381'
  AND vk.skl1 = '14'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 426
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  427, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '36381'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 427
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  427, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, 2.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '36381'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 427
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  428, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '36381'
  AND vk.skl1 = '11'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 428
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  429, 'MAENNLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '36381'
  AND vk.skl1 = '7'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 429
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  430, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '36381'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 430
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  430, 'MAENNLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '36381'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 430
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  431, 'MAENNLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '36381'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 431
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  432, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '36381'
  AND vk.skl1 = '24'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 432
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  433, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '36381'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 433
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  433, 'MAENNLICH', NULL, NULL, TRUE,
  6, 'NORMAL', 'KEINE',
  6.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '36381'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 433
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  434, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '36381'
  AND vk.skl1 = '27'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 434
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  435, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '36381'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 435
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  436, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '36381'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 436
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  436, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 5.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '36381'
  AND vk.skl1 = '7'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 436
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  437, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '36381'
  AND vk.skl1 = '4'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 437
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  438, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '36381'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 438
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  439, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '36381'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 439
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  439, 'WEIBLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '36381'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 439
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  440, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 3.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '36381'
  AND vk.skl1 = '14'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 440
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  441, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '36381'
  AND vk.skl1 = '11'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 441
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  442, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '36381'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 442
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  442, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '36381'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 442
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  443, 'WEIBLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '36381'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 443
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  444, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'BRONZE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '36381'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 444
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  445, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '36381'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 445
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  445, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '36381'
  AND vk.skl1 = '27'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 445
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  446, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '36381'
  AND vk.skl1 = '31'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 446
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  447, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '36381'
  AND vk.skl1 = '27'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 447
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  448, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '36381'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 448
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  448, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '36381'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 448
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  449, 'WEIBLICH', NULL, NULL, TRUE,
  6, 'NORMAL', 'KEINE',
  6.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '0492'
  AND vk.skl1 = '24'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 449
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  450, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '0492'
  AND vk.skl1 = '27'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 450
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  451, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '0492'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 451
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  451, 'MAENNLICH', NULL, NULL, TRUE,
  7, 'NORMAL', 'KEINE',
  7.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '0492'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 451
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  452, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '0492'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 452
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  453, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '0492'
  AND vk.skl1 = '21'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 453
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  454, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '0492'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 454
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  454, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '0492'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 454
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  455, 'WEIBLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '0492'
  AND vk.skl1 = '32'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 455
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  456, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'BRONZE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '0492'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 456
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  457, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '47305'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 457
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  457, 'MAENNLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '47305'
  AND vk.skl1 = '16'
  AND COALESCE(vk.skl2,'') = '4'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 457
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  458, 'MAENNLICH', NULL, NULL, TRUE,
  6, 'NORMAL', 'KEINE',
  6.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '47305'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 458
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  459, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '47305'
  AND vk.skl1 = '31'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 459
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  460, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '47305'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 460
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  460, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '47305'
  AND vk.skl1 = '36'
  AND COALESCE(vk.skl2,'') = '4'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 460
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  461, 'WEIBLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '47305'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 461
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  462, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'BRONZE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '47305'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 462
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  463, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '47305'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 463
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  463, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '47305'
  AND vk.skl1 = '21'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 463
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  464, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 2.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '47305'
  AND vk.skl1 = '16'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 464
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  465, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '812'
  AND vk.skl1 = '7'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 465
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  466, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '812'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 466
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  466, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '812'
  AND vk.skl1 = '7'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 466
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  467, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '812'
  AND vk.skl1 = '7'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 467
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  468, 'MAENNLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '812'
  AND vk.skl1 = '27'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 468
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  469, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '812'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 469
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  469, 'MAENNLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '812'
  AND vk.skl1 = '27'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 469
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  470, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 2.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '812'
  AND vk.skl1 = '27'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 470
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  471, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 3.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '812'
  AND vk.skl1 = '7'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 471
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  472, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '812'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 472
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  472, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '812'
  AND vk.skl1 = '7'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 472
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  473, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '812'
  AND vk.skl1 = '7'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 473
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  474, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '812'
  AND vk.skl1 = '7'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 474
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  475, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '35005'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 475
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  475, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '35005'
  AND vk.skl1 = '25'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 475
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  476, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '35005'
  AND vk.skl1 = '32'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 476
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  477, 'WEIBLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '35005'
  AND vk.skl1 = '13'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 477
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  478, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '35005'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 478
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  478, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '35005'
  AND vk.skl1 = '32'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 478
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  479, 'MAENNLICH', NULL, NULL, TRUE,
  6, 'NORMAL', 'KEINE',
  6.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '22787'
  AND vk.skl1 = '11'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 479
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  480, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '22787'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 480
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  481, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '22787'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 481
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  481, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '22787'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 481
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  482, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '22787'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 482
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  483, 'WEIBLICH', NULL, NULL, TRUE,
  6, 'NORMAL', 'KEINE',
  6.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '22787'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 483
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  484, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '22787'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 484
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  484, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '22787'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 484
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  485, 'MAENNLICH', NULL, NULL, TRUE,
  6, 'NORMAL', 'KEINE',
  6.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '38851'
  AND vk.skl1 = '14'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 485
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  486, 'MAENNLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '38851'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 486
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  487, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '38851'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 487
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  487, 'MAENNLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '38851'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 487
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  488, 'MAENNLICH', NULL, NULL, TRUE,
  7, 'NORMAL', 'KEINE',
  7.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '38851'
  AND vk.skl1 = '33'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 488
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  489, 'MAENNLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '38851'
  AND vk.skl1 = '32'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 489
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  490, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '38851'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 490
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  490, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '38851'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 490
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  491, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '38851'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 491
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  492, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '38851'
  AND vk.skl1 = '21'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 492
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  493, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '38851'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 493
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  493, 'WEIBLICH', NULL, NULL, TRUE,
  7, 'NORMAL', 'KEINE',
  7.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '38851'
  AND vk.skl1 = '27'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 493
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  494, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '38851'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 494
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  495, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '38851'
  AND vk.skl1 = '31'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 495
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  496, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '38851'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 496
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  496, 'WEIBLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '38851'
  AND vk.skl1 = '34'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 496
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  497, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '247'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 497
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  498, 'MAENNLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '247'
  AND vk.skl1 = '9'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 498
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  499, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '247'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 499
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  499, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '247'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 499
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  500, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '247'
  AND vk.skl1 = '9'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 500
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  501, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'BRONZE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '247'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 501
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  502, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '247'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 502
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  502, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '247'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 502
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  503, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '247'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 503
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  504, 'MAENNLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '247'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 504
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  505, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '247'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 505
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  505, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '247'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 505
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  506, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '247'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 506
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  507, 'WEIBLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '247'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 507
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  508, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '247'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 508
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  508, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '247'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 508
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  509, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '247'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 509
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  510, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '247'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 510
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  511, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '247'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 511
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  511, 'MAENNLICH', NULL, NULL, TRUE,
  6, 'NORMAL', 'KEINE',
  6.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '247'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 511
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  512, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '247'
  AND vk.skl1 = '32'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 512
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  513, 'WEIBLICH', NULL, NULL, TRUE,
  7, 'NORMAL', 'KEINE',
  7.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '247'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 513
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  514, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '247'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 514
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  514, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '247'
  AND vk.skl1 = '33'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 514
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  515, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '247'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 515
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  516, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '247'
  AND vk.skl1 = '17'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 516
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  517, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '31957'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 517
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  517, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '31957'
  AND vk.skl1 = '8'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 517
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  518, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '31957'
  AND vk.skl1 = '9'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 518
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  519, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '31957'
  AND vk.skl1 = '9'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 519
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  520, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '31957'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 520
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  520, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '31957'
  AND vk.skl1 = '24'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 520
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  521, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '31957'
  AND vk.skl1 = '28'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 521
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  522, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '31957'
  AND vk.skl1 = '9'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 522
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  523, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '31957'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 523
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  523, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '31957'
  AND vk.skl1 = '29'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 523
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  524, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '31957'
  AND vk.skl1 = '29'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 524
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  525, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2117'
  AND vk.skl1 = '11'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 525
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  526, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2117'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 526
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  526, 'WEIBLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2117'
  AND vk.skl1 = '11'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 526
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  527, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2117'
  AND vk.skl1 = '13'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 527
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  528, 'WEIBLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2117'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 528
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  529, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2117'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 529
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  529, 'WEIBLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2117'
  AND vk.skl1 = '14'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 529
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  530, 'WEIBLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2117'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 530
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  531, 'WEIBLICH', NULL, NULL, TRUE,
  6, 'NORMAL', 'KEINE',
  6.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2117'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 531
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  532, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2117'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 532
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  532, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2117'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 532
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  533, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '343'
  AND vk.skl1 = '31'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 533
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  534, 'WEIBLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '343'
  AND vk.skl1 = '33'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 534
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  535, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '343'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 535
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  535, 'WEIBLICH', NULL, NULL, TRUE,
  7, 'NORMAL', 'KEINE',
  7.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '343'
  AND vk.skl1 = '32'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 535
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  536, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '343'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 536
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  537, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '496'
  AND vk.skl1 = '10'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 537
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  538, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '496'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 538
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  538, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '496'
  AND vk.skl1 = '11'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 538
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  539, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '496'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 539
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  540, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '496'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 540
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  541, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2917'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 541
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  541, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2917'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 541
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  542, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2917'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 542
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  543, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2917'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 543
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  544, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2917'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 544
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  544, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2917'
  AND vk.skl1 = '13'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 544
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  545, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'BRONZE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2917'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 545
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  546, 'MAENNLICH', NULL, NULL, TRUE,
  7, 'NORMAL', 'KEINE',
  7.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2917'
  AND vk.skl1 = '30'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 546
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  547, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2917'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 547
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  547, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2917'
  AND vk.skl1 = '5'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 547
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  548, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2917'
  AND vk.skl1 = '13'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 548
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  549, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2917'
  AND vk.skl1 = '13'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 549
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  550, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2917'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 550
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  550, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2917'
  AND vk.skl1 = '21'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 550
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  551, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2917'
  AND vk.skl1 = '24'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 551
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  552, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2917'
  AND vk.skl1 = '37'
  AND COALESCE(vk.skl2,'') = '4'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 552
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  553, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '063'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 553
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  553, 'MAENNLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '063'
  AND vk.skl1 = '31'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 553
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  554, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '063'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 554
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  555, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 2.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '063'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 555
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  556, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '063'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 556
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  556, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '063'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 556
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  557, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '063'
  AND vk.skl1 = '11'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 557
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  558, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '063'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 558
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  559, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '063'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 559
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  559, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '063'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 559
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  560, 'WEIBLICH', NULL, NULL, TRUE,
  6, 'NORMAL', 'KEINE',
  6.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '063'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 560
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  561, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '17'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 561
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  562, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 562
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  562, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '5'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 562
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  563, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 563
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  564, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '30'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 564
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  565, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 565
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  565, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '4'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 565
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  566, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '29'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 566
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  567, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '25'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 567
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  568, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 568
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  568, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '30'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 568
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  569, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 569
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  570, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '37'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 570
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  571, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 571
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  571, 'WEIBLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '24'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 571
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  572, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '28'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 572
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  573, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '33'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 573
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  574, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 574
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  574, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '21'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 574
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  575, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '32'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 575
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  576, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 576
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  577, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 577
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  577, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 577
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  578, 'MAENNLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 578
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  579, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 2.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '31'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 579
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  580, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 580
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  580, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'BRONZE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 580
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  581, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 581
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  582, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '31'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 582
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  583, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 583
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  583, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '30'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 583
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  584, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '35'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 584
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  585, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '37'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 585
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  586, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 586
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  586, 'MAENNLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '33'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 586
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  587, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 2.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '4'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 587
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  588, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 588
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  589, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 589
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  589, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '24'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 589
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  590, 'MAENNLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 590
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  591, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '34'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 591
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  592, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 592
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  592, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 2.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '159'
  AND vk.skl1 = '37'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 592
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  593, 'MAENNLICH', NULL, NULL, TRUE,
  7, 'NORMAL', 'KEINE',
  7.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3522'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 593
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  594, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3522'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 594
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  595, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3522'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 595
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  595, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3522'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 595
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  596, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3522'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 596
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  597, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3522'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 597
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  598, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3522'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 598
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  598, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3522'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 598
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  599, 'MAENNLICH', NULL, NULL, TRUE,
  7, 'NORMAL', 'KEINE',
  7.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3522'
  AND vk.skl1 = '14'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 599
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  600, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3522'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 600
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  601, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3522'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 601
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  601, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3522'
  AND vk.skl1 = '14'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 601
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  602, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3522'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 602
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  603, 'MAENNLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3522'
  AND vk.skl1 = '34'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 603
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  604, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3522'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 604
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  604, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3522'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 604
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  605, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '49561'
  AND vk.skl1 = '14'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 605
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  606, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '49561'
  AND vk.skl1 = '14'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 606
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  607, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '49561'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 607
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  607, 'MAENNLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '49561'
  AND vk.skl1 = '14'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 607
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  608, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '49561'
  AND vk.skl1 = '34'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 608
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  609, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '49561'
  AND vk.skl1 = '14'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 609
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  610, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '49561'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 610
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  610, 'MAENNLICH', NULL, NULL, TRUE,
  7, 'NORMAL', 'KEINE',
  7.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '49561'
  AND vk.skl1 = '32'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 610
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  611, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '35096'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 611
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  612, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '35096'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 612
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  613, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '35096'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 613
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  613, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '35096'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 613
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  614, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '35096'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 614
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  615, 'MAENNLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '6728'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 615
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  616, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '6728'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 616
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  616, 'MAENNLICH', NULL, NULL, TRUE,
  7, 'NORMAL', 'KEINE',
  7.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '6728'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 616
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  617, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '6728'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 617
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  618, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '6728'
  AND vk.skl1 = '29'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 618
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  619, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '6728'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 619
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  619, 'WEIBLICH', NULL, NULL, TRUE,
  6, 'NORMAL', 'KEINE',
  6.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '6728'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 619
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  620, 'WEIBLICH', NULL, NULL, TRUE,
  7, 'NORMAL', 'KEINE',
  7.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '6728'
  AND vk.skl1 = '7'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 620
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  621, 'WEIBLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '6728'
  AND vk.skl1 = '25'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 621
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  622, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '6728'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 622
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  622, 'WEIBLICH', NULL, NULL, TRUE,
  7, 'NORMAL', 'KEINE',
  7.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '6728'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 622
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  623, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '10524'
  AND vk.skl1 = '32'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 623
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  624, 'WEIBLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '10524'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 624
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  625, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '10524'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 625
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  625, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '10524'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 625
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  626, 'MAENNLICH', NULL, NULL, TRUE,
  6, 'NORMAL', 'KEINE',
  6.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '10524'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 626
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  627, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '10524'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 627
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  628, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '10524'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 628
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  628, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '10524'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 628
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  629, 'MAENNLICH', NULL, NULL, TRUE,
  6, 'NORMAL', 'KEINE',
  6.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '10524'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 629
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  630, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '10524'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 630
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  631, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '21518'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 631
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  631, 'MAENNLICH', NULL, NULL, TRUE,
  7, 'NORMAL', 'KEINE',
  7.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '21518'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 631
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  632, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '21518'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 632
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  633, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '21518'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 633
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  634, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '21518'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 634
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  634, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '21518'
  AND vk.skl1 = '7'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 634
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  635, 'WEIBLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '21518'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 635
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  636, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '21518'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 636
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  637, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '21518'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 637
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  637, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '21518'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 637
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  638, 'WEIBLICH', NULL, NULL, TRUE,
  6, 'NORMAL', 'KEINE',
  6.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '21518'
  AND vk.skl1 = '27'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 638
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  639, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '27261'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 639
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  640, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '27261'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 640
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  640, 'MAENNLICH', NULL, NULL, TRUE,
  6, 'NORMAL', 'KEINE',
  6.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '27261'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 640
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  641, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '27261'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 641
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  642, 'MAENNLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '27261'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 642
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  643, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '27261'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 643
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  643, 'MAENNLICH', NULL, NULL, TRUE,
  6, 'NORMAL', 'KEINE',
  6.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '27261'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 643
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  644, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '27261'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 644
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  645, 'MAENNLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '27261'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 645
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  646, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '27261'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 646
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  646, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '27261'
  AND vk.skl1 = '24'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 646
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  647, 'MAENNLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 647
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  648, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '10'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 648
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  649, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 649
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  649, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 649
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  650, 'MAENNLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 650
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  651, 'MAENNLICH', NULL, NULL, TRUE,
  6, 'NORMAL', 'KEINE',
  6.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '33'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 651
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  652, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 652
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  652, 'MAENNLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '36'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 652
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  653, 'WEIBLICH', NULL, NULL, TRUE,
  6, 'NORMAL', 'KEINE',
  6.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 653
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  654, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '15'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 654
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  655, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '38313'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 655
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  655, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '38313'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 655
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  656, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '38313'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 656
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  657, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '38313'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 657
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  658, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '38313'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 658
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  658, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '38313'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 658
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  659, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '38313'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 659
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  660, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '38313'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 660
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  661, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3287'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 661
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  661, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3287'
  AND vk.skl1 = '5'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 661
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  662, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3287'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 662
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  663, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 3.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3287'
  AND vk.skl1 = '25'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 663
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  664, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3287'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 664
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  664, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3287'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 664
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  665, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 2.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3287'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 665
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  666, 'WEIBLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3287'
  AND vk.skl1 = '25'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 666
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  667, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3287'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 667
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  667, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3287'
  AND vk.skl1 = '25'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 667
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  668, 'WEIBLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3287'
  AND vk.skl1 = '21'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 668
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  669, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3287'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 669
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  670, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3287'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 670
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  670, 'WEIBLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3287'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 670
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  671, 'WEIBLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3287'
  AND vk.skl1 = '34'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 671
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  672, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '3287'
  AND vk.skl1 = '31'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 672
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  673, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2555'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 673
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  673, 'MAENNLICH', NULL, NULL, TRUE,
  7, 'NORMAL', 'KEINE',
  7.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2555'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 673
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  674, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'BRONZE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2555'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 674
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  675, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2555'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 675
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  676, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2555'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 676
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  676, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2555'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 676
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  677, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2555'
  AND vk.skl1 = '9'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 677
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  678, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2555'
  AND vk.skl1 = '9'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 678
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  679, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2555'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 679
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  679, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2555'
  AND vk.skl1 = '9'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 679
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  680, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'BRONZE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2555'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 680
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  681, 'MAENNLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2555'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 681
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  682, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2555'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 682
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  682, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2555'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 682
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  683, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2555'
  AND vk.skl1 = '29'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 683
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  684, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2555'
  AND vk.skl1 = '29'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 684
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  685, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2555'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 685
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  685, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2555'
  AND vk.skl1 = '32'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 685
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  686, 'WEIBLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2555'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 686
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  687, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2555'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 687
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  688, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2555'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 688
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  688, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '2555'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 688
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  689, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '25619'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 689
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  690, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '25619'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 690
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  691, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '25619'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 691
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  691, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '25619'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 691
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  692, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '25619'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 692
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  693, 'MAENNLICH', NULL, NULL, TRUE,
  6, 'NORMAL', 'KEINE',
  6.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '12657'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 693
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  694, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '12657'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 694
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  694, 'MAENNLICH', NULL, NULL, TRUE,
  7, 'NORMAL', 'KEINE',
  7.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '12657'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 694
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  695, 'MAENNLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '12657'
  AND vk.skl1 = '4'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 695
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  696, 'WEIBLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '12657'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 696
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  697, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '12612'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 697
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  697, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'BRONZE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '12612'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 697
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  698, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '12612'
  AND vk.skl1 = '5'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 698
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  699, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'BRONZE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '12612'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 699
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  700, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '12612'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 700
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  700, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'BRONZE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '12612'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 700
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  701, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'BRONZE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '12612'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 701
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  702, 'MAENNLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '12612'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 702
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  703, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '12612'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 703
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  703, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '12612'
  AND vk.skl1 = '25'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 703
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  704, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '12612'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 704
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  705, 'WEIBLICH', NULL, NULL, TRUE,
  7, 'NORMAL', 'KEINE',
  7.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '12612'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 705
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  706, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '12612'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 706
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  706, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '12612'
  AND vk.skl1 = '5'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 706
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  707, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'BRONZE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '12612'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 707
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  708, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '12612'
  AND vk.skl1 = '34'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 708
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  709, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '12612'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 709
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  709, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '12612'
  AND vk.skl1 = '37'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 709
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  710, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '12612'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 710
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  711, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '12612'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 711
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  712, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '12612'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 712
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  712, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '12612'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 712
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  713, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '001'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 713
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  714, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '001'
  AND vk.skl1 = '7'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 714
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  715, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '001'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 715
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  715, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '001'
  AND vk.skl1 = '21'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 715
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  716, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'BRONZE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '001'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 716
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  717, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '001'
  AND vk.skl1 = '21'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 717
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  718, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '067'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 718
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  718, 'WEIBLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '067'
  AND vk.skl1 = '32'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 718
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  719, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '067'
  AND vk.skl1 = '32'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 719
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  720, 'MAENNLICH', NULL, NULL, TRUE,
  6, 'NORMAL', 'KEINE',
  6.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '067'
  AND vk.skl1 = '32'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 720
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  721, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '54'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 721
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  721, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 2.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '54'
  AND vk.skl1 = '15'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 721
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  722, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '54'
  AND vk.skl1 = '29'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 722
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  723, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '33'
  AND vk.skl1 = '34'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 723
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  724, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '33'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 724
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  724, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '33'
  AND vk.skl1 = '29'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 724
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  725, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '33'
  AND vk.skl1 = '16'
  AND COALESCE(vk.skl2,'') = '4'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 725
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  726, 'WEIBLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '33'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 726
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  727, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '33'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 727
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  727, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '33'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 727
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  728, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '33'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 728
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  729, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51586'
  AND vk.skl1 = '7'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 729
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  730, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51586'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 730
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  730, 'WEIBLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51586'
  AND vk.skl1 = '27'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 730
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  731, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51586'
  AND vk.skl1 = '27'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 731
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  732, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51586'
  AND vk.skl1 = '34'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 732
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  733, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51586'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 733
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  733, 'WEIBLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51586'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 733
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  734, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51586'
  AND vk.skl1 = '33'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 734
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  735, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51586'
  AND vk.skl1 = '34'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 735
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  736, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51586'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 736
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  736, 'WEIBLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51586'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 736
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  737, 'WEIBLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51586'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 737
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  738, 'WEIBLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '50092'
  AND vk.skl1 = '7'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 738
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  739, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '50092'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 739
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  739, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '50092'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 739
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  740, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '50092'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 740
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  741, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '373'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 741
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  742, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '373'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 742
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  742, 'MAENNLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '373'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 742
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  743, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '373'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 743
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  744, 'MAENNLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '373'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 744
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  745, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '4625'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 745
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  745, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '4625'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 745
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  746, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '4625'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 746
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  747, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '4625'
  AND vk.skl1 = '7'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 747
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  748, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '4625'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 748
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  748, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '4625'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 748
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  749, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '4625'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 749
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  750, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '4625'
  AND vk.skl1 = '30'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 750
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  751, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '1083'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 751
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  751, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '1083'
  AND vk.skl1 = '4'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 751
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  752, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '1083'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 752
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  753, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '1083'
  AND vk.skl1 = '8'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 753
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  754, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '1083'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 754
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  754, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '1083'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 754
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  755, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '9814'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 755
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  756, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 3.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '9814'
  AND vk.skl1 = '33'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 756
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  757, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '9814'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 757
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  757, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '9814'
  AND vk.skl1 = '33'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 757
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  758, 'MAENNLICH', NULL, NULL, TRUE,
  7, 'NORMAL', 'KEINE',
  7.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '9814'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 758
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  759, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '9814'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 759
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  760, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '9814'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 760
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  760, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '9814'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 760
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  761, 'WEIBLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '9814'
  AND vk.skl1 = '32'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 761
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  762, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '9814'
  AND vk.skl1 = '34'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 762
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  763, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51885'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 763
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  763, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'BRONZE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51885'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 763
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  764, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'BRONZE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51885'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 764
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  765, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51885'
  AND vk.skl1 = '23'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 765
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  766, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51885'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 766
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  766, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51885'
  AND vk.skl1 = '31'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 766
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  767, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 3.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51885'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 767
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  768, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51885'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 768
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  769, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51885'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 769
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  769, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51885'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 769
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  770, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51885'
  AND vk.skl1 = '11'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 770
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  771, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51885'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 771
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  772, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51885'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 772
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  772, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51885'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 772
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  773, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51885'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 773
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  774, 'MAENNLICH', NULL, NULL, FALSE,
  NULL, 'NICHT_EINGELIEFERT', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '51885'
  AND vk.skl1 = '19'
  AND COALESCE(vk.skl2,'') = ''
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 774
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  775, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '02917'
  AND vk.skl1 = '33'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 775
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  775, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '02917'
  AND vk.skl1 = '33'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 775
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  776, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 2.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '033'
  AND vk.skl1 = '36'
  AND COALESCE(vk.skl2,'') = '5'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 776
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  777, 'MAENNLICH', NULL, NULL, TRUE,
  5, 'NORMAL', 'KEINE',
  5.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 2
  AND z.verbandsnummer = '033'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 777
  );
-- 1022 Anmeldungen aus E2025Schaudaten.csv

-- ── L2018Schaudaten.csv (Schau-ID 5) ──
-- 0 Anmeldungen aus L2018Schaudaten.csv

-- ── M2025Schaudaten.csv (Schau-ID 4) ──
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  1, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 1
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  2, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 2
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  3, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 3
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  4, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 4
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  4, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 4
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  5, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '10'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 5
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  6, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '4'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 6
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  7, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '5'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 7
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  7, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '5'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 7
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  8, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 8
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  9, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '13'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 9
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  10, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '21'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 10
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  10, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '21'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 10
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  11, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 11
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  12, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '31'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 12
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  13, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '31'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 13
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  13, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '31'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 13
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  14, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 14
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  15, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '31'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 15
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  16, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '24'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 16
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  16, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '24'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 16
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  17, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '111'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 17
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  18, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '111'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 18
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  19, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '111'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 19
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  19, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'BRONZE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '111'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 19
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  20, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '111'
  AND vk.skl1 = '7'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 20
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  21, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '111'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 21
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  22, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '111'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 22
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  22, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '111'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '4'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 22
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  23, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '111'
  AND vk.skl1 = '27'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 23
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  24, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '111'
  AND vk.skl1 = '27'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 24
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  25, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '111'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 25
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  25, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '111'
  AND vk.skl1 = '33'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 25
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  26, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '111'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 26
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  27, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '111'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 27
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  28, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '111'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 28
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  28, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '111'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 28
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  29, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '283'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 29
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  30, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '283'
  AND vk.skl1 = '10'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 30
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  31, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '283'
  AND vk.skl1 = '16'
  AND COALESCE(vk.skl2,'') = '4'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 31
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  31, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '283'
  AND vk.skl1 = '16'
  AND COALESCE(vk.skl2,'') = '4'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 31
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  32, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '283'
  AND vk.skl1 = '10'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 32
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  33, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '1036'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 33
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  34, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '1036'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 34
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  34, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '1036'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 34
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  35, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '1036'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 35
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  36, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '1036'
  AND vk.skl1 = '13'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 36
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  37, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '2804'
  AND vk.skl1 = '31'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 37
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  37, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '2804'
  AND vk.skl1 = '31'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 37
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  38, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '2804'
  AND vk.skl1 = '31'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 38
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  39, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '2804'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 39
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  40, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '2804'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 40
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  40, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '2804'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 40
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  41, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '1413'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 41
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  42, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '1413'
  AND vk.skl1 = '11'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 42
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  43, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '1413'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '4'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 43
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  43, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '1413'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '4'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 43
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  44, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '1413'
  AND vk.skl1 = '28'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 44
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  45, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 45
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  46, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 46
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  46, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 46
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  47, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 47
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  48, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 48
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  49, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '5'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 49
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  49, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '5'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 49
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  50, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '15'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 50
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  51, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '10'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 51
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  52, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 52
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  52, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 52
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  53, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 53
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  54, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 54
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  55, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '31'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 55
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  55, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '31'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 55
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  56, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '33'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 56
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  57, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '36'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 57
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  58, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '12703'
  AND vk.skl1 = '7'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 58
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  58, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '12703'
  AND vk.skl1 = '7'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 58
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  59, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '12703'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 59
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  60, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'GOLD',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '12703'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 60
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  61, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '12703'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 61
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  61, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '12703'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 61
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  62, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '12703'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 62
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  63, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '12703'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 63
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  64, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '12703'
  AND vk.skl1 = '14'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 64
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  64, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '12703'
  AND vk.skl1 = '14'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 64
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  65, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '12703'
  AND vk.skl1 = '21'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 65
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  66, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '12703'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 66
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  67, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '12703'
  AND vk.skl1 = '21'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 67
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  67, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '12703'
  AND vk.skl1 = '21'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 67
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  68, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '12703'
  AND vk.skl1 = '21'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 68
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  69, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '12703'
  AND vk.skl1 = '33'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 69
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  70, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '2111'
  AND vk.skl1 = '13'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 70
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  70, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '2111'
  AND vk.skl1 = '13'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 70
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  71, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '2111'
  AND vk.skl1 = '13'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 71
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  72, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '2111'
  AND vk.skl1 = '9'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 72
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  73, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '2111'
  AND vk.skl1 = '7'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 73
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  73, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '2111'
  AND vk.skl1 = '7'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 73
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  74, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '2111'
  AND vk.skl1 = '35'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 74
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  75, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 75
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  76, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 76
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  76, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 76
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  77, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 77
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  78, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 78
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  79, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 79
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  79, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 79
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  80, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 80
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  81, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 81
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  82, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 82
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  82, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 82
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  83, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 83
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  84, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 84
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  85, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 85
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  85, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 85
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  86, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 86
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  87, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 87
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  88, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 88
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  88, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 88
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  89, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 89
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  90, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 90
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  91, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 91
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  91, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 91
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  92, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'SILBER',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 92
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  93, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 93
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  94, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '25'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 94
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  94, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '25'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 94
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  95, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '10'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 95
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  96, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '35'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 96
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  97, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '16'
  AND COALESCE(vk.skl2,'') = '5'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 97
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  97, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '16'
  AND COALESCE(vk.skl2,'') = '5'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 97
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  98, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 4
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '36'
  AND COALESCE(vk.skl2,'') = '5'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 98
  );
-- 130 Anmeldungen aus M2025Schaudaten.csv

-- ── V2025Schaudaten.csv (Schau-ID 3) ──
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  1, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 3.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 1
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  2, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 2
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  3, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 3
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  4, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 4
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  4, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 4
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  5, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '10'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 5
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  6, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '4'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 6
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  7, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '5'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 7
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  7, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '5'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 7
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  8, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 8
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  9, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '13'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 9
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  10, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '21'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 10
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  10, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '21'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 10
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  11, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 11
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  12, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 3.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '31'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 12
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  13, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '31'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 13
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  13, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '31'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 13
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  14, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 14
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  15, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '31'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 15
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  16, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '24'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 16
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  16, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 3.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '13861'
  AND vk.skl1 = '24'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 16
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  17, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '22169'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 17
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  18, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '22169'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 18
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  19, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '22169'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 19
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  19, 'WEIBLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '22169'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 19
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  20, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '22169'
  AND vk.skl1 = '7'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 20
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  21, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '22169'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 21
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  22, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '22169'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '4'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 22
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  22, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 3.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '22169'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '4'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 22
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  23, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '22169'
  AND vk.skl1 = '27'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 23
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  24, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '22169'
  AND vk.skl1 = '27'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 24
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  25, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '22169'
  AND vk.skl1 = '33'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 25
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  25, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '22169'
  AND vk.skl1 = '33'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 25
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  26, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '22169'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 26
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  27, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '22169'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 27
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  28, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '22169'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 28
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  28, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '22169'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 28
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  29, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '283'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 29
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  30, 'MAENNLICH', NULL, NULL, TRUE,
  3, 'NORMAL', 'KEINE',
  3.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '283'
  AND vk.skl1 = '10'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 30
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  31, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '283'
  AND vk.skl1 = '16'
  AND COALESCE(vk.skl2,'') = '4'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 31
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  31, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '283'
  AND vk.skl1 = '16'
  AND COALESCE(vk.skl2,'') = '4'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 31
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  32, 'MAENNLICH', NULL, NULL, TRUE,
  4, 'NORMAL', 'KEINE',
  4.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '283'
  AND vk.skl1 = '10'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 32
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  33, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '1036'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 33
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  34, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '1036'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 34
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  34, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '1036'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 34
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  35, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 3.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '1036'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 35
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  36, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '1036'
  AND vk.skl1 = '13'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 36
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  37, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '2804'
  AND vk.skl1 = '31'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 37
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  37, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '2804'
  AND vk.skl1 = '31'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 37
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  38, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '2804'
  AND vk.skl1 = '31'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 38
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  39, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '2804'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 39
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  40, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '2804'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 40
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  40, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '2804'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 40
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  41, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '1413'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 41
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  42, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '1413'
  AND vk.skl1 = '11'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 42
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  43, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '1413'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '4'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 43
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  43, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '1413'
  AND vk.skl1 = '26'
  AND COALESCE(vk.skl2,'') = '4'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 43
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  44, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '1413'
  AND vk.skl1 = '28'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 44
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  45, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 45
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  46, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 46
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  46, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 46
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  47, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 47
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  48, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '6'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 48
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  49, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '5'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 49
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  49, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '5'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 49
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  50, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '15'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 50
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  51, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '10'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 51
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  52, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 52
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  52, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '12'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 52
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  53, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 53
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  54, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 54
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  55, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '31'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 55
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  55, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '31'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 55
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  56, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '33'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 56
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  57, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '4535'
  AND vk.skl1 = '36'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 57
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  58, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '12703'
  AND vk.skl1 = '7'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 58
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  58, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 3.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '12703'
  AND vk.skl1 = '7'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 58
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  59, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '12703'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 59
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  60, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 3.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '12703'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 60
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  61, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '12703'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 61
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  61, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '12703'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 61
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  62, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '12703'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 62
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  63, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 3.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '12703'
  AND vk.skl1 = '3'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 63
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  64, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '12703'
  AND vk.skl1 = '14'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 64
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  64, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 3.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '12703'
  AND vk.skl1 = '14'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 64
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  65, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '12703'
  AND vk.skl1 = '21'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 65
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  66, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '12703'
  AND vk.skl1 = '22'
  AND COALESCE(vk.skl2,'') = '3'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 66
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  67, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '12703'
  AND vk.skl1 = '21'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 67
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  67, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '12703'
  AND vk.skl1 = '21'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 67
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  68, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '12703'
  AND vk.skl1 = '21'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 68
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  69, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '12703'
  AND vk.skl1 = '32'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 69
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  70, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '2111'
  AND vk.skl1 = '13'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 70
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  70, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 3.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '2111'
  AND vk.skl1 = '13'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 70
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  71, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '2111'
  AND vk.skl1 = '13'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 71
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  72, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '2111'
  AND vk.skl1 = '9'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 72
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  73, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '2111'
  AND vk.skl1 = '7'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 73
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  73, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '2111'
  AND vk.skl1 = '7'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 73
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  74, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '2111'
  AND vk.skl1 = '35'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 74
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  75, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '111'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 75
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  76, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '111'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 76
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  76, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '111'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 76
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  77, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '111'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 77
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  78, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '111'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 78
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  79, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '111'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 79
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  79, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '111'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 79
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  80, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '111'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 80
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  81, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '111'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 81
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  82, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '111'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 82
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  82, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '111'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 82
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  83, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '111'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 83
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  84, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '111'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 84
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  85, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '111'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 85
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  85, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '111'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 85
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  86, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '111'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 86
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  87, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '111'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 87
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  88, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '111'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 88
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  88, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '111'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 88
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  89, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '111'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 89
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  90, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '111'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 90
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  91, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '111'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 91
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  91, 'MAENNLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  8.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '111'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 91
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  92, 'WEIBLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '1'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 92
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  93, 'MAENNLICH', NULL, NULL, TRUE,
  2, 'NORMAL', 'KEINE',
  2.0000, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '2'
  AND COALESCE(vk.skl2,'') = '1'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 93
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  94, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '25'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 94
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  94, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 3.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '25'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 94
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  95, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 3.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '10'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 95
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  96, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 3.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '35'
  AND COALESCE(vk.skl2,'') = '2'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 96
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  97, 'WEIBLICH', NULL, NULL, TRUE,
  NULL, 'NORMAL', 'KEINE',
  NULL, NULL, NULL, NULL, NULL,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '16'
  AND COALESCE(vk.skl2,'') = '5'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 97
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  97, 'WEIBLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 3.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '16'
  AND COALESCE(vk.skl2,'') = '5'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 97
  );
INSERT INTO schauanmeldung
  (schau_id, zuecher_id, vogelklasse_id,
   kaefig_nummer, geschlecht, ring_nummer, zuchtjahr, eingeliefert,
   platzierung, platzierungskennzeichen, medaille,
   punkte_platz, punkte_schaugruppe, punkte_gruppensieger, punkte_schwerpunktfarbe, punkte_gesamt,
   klasse_zusatzbezeichnung, erstellt_am, version)
SELECT
  s.id,
  z.id,
  vk.id,
  98, 'MAENNLICH', NULL, NULL, TRUE,
  1, 'NORMAL', 'KEINE',
  1.0000, NULL, NULL, NULL, 1.0000,
  NULL, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z, vogelklasse vk
WHERE s.id = 3
  AND z.verbandsnummer = '42760'
  AND vk.skl1 = '36'
  AND COALESCE(vk.skl2,'') = '5'
  AND COALESCE(vk.skl3,'') = ''
  AND NOT EXISTS (
    SELECT 1 FROM schauanmeldung a WHERE a.schau_id = s.id AND a.kaefig_nummer = 98
  );
-- 130 Anmeldungen aus V2025Schaudaten.csv
