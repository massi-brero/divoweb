-- V007__import_zuecher_platzierungen.sql
-- Züchterranglisten aus *ZuePlacier.DB-Dateien

-- ── E2025ZuePlacier.csv (Schau-ID 2) ──
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 1, 3.0, 12,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '10294'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 2, 2.0, 12,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '48576'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 3, 5.0, 12,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '51778'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 4, 2.0, 8,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '7989'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 5, 1.0, 8,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '31913'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 6, 7.0, 32,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '2570'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 7, 1.0, 9,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '51374'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 8, 17.0, 50,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '125'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 9, 2.0, 12,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '3653'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 10, 9.0, 25,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '214'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 11, 0.0, 25,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '798'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 12, 1.0, 20,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '311'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 13, 9.0, 16,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '13576'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 14, 2.0, 8,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '8407'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 15, 1.0, 8,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '95'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 16, 3.0, 8,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '7290'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 17, 3.0, 16,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '16961'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 18, 4.0, 20,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '13526'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 19, 1.0, 14,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '23424'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 20, 1.0, 8,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '1919'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 21, 1.0, 8,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '34393'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 22, 5.0, 12,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '47260'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 23, 1.0, 8,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '48664'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 24, 3.0, 8,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '49055'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 25, 11.0, 25,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '3902'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 26, 3.0, 7,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '10'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 27, 4.0, 10,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '13528'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 28, 0.0, 3,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '40'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 29, 5.0, 4,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '19385'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 30, 14.0, 28,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '36381'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 31, 1.0, 8,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '0492'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 32, 3.0, 8,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '47305'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 33, 6.0, 10,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '812'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 34, 0.0, 4,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '35005'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 35, 0.0, 6,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '22787'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 36, 1.0, 12,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '38851'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 37, 2.0, 20,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '247'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 38, 2.0, 8,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '31957'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 39, 0.0, 8,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '2117'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 40, 0.0, 4,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '343'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 41, 0.0, 4,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '496'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 42, 2.0, 12,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '2917'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 43, 3.0, 8,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '063'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 44, 8.0, 32,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '159'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 45, 0.0, 12,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '3522'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 46, 1.0, 6,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '49561'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 47, 0.0, 4,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '35096'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 48, 0.0, 8,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '6728'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 49, 1.0, 8,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '10524'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 50, 0.0, 8,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '21518'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 51, 0.0, 8,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '27261'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 52, 0.0, 8,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '4535'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 53, 0.0, 6,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '38313'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 54, 5.0, 12,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '3287'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 55, 2.0, 16,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '2555'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 56, 0.0, 4,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '25619'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 57, 0.0, 4,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '12657'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 58, 4.0, 16,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '12612'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 59, 2.0, 5,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '001'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 60, 0.0, 3,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '067'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 61, 2.0, 2,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '54'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 62, 1.0, 6,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '33'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 63, 2.0, 9,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '51586'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 64, 0.0, 3,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '50092'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 65, 0.0, 4,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '373'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 66, 0.0, 6,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '4625'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 67, 0.0, 4,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '1083'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 68, 5.0, 8,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '9814'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 69, 5.0, 12,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '51885'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 70, 0.0, 1,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '02917'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 71, 2.0, 2,
  0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '033'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
-- ── L2018ZuePlacier.csv (Schau-ID 5) ──
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 1, 67.0, 11,
  0, 0, 0,
  4, 6, 0, 0,
  1, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 5 AND z.verbandsnummer = '1578'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 2, 67.0, 11,
  0, 0, 0,
  4, 6, 0, 0,
  1, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 5 AND z.verbandsnummer = '1578'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 3, 67.0, 11,
  0, 0, 0,
  4, 6, 0, 0,
  1, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 5 AND z.verbandsnummer = '1578'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 4, 67.0, 11,
  0, 0, 0,
  4, 6, 0, 0,
  1, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 5 AND z.verbandsnummer = '1578'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 5, 67.0, 11,
  0, 0, 0,
  4, 6, 0, 0,
  1, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 5 AND z.verbandsnummer = '1578'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 6, 67.0, 11,
  0, 0, 0,
  4, 6, 0, 0,
  1, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 5 AND z.verbandsnummer = '1578'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 7, 67.0, 11,
  0, 0, 0,
  4, 6, 0, 0,
  1, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 5 AND z.verbandsnummer = '1578'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 8, 67.0, 11,
  0, 0, 0,
  4, 6, 0, 0,
  1, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 5 AND z.verbandsnummer = '1578'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 9, 67.0, 11,
  0, 0, 0,
  4, 6, 0, 0,
  1, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 5 AND z.verbandsnummer = '1578'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 10, 67.0, 11,
  0, 0, 0,
  4, 6, 0, 0,
  1, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 5 AND z.verbandsnummer = '1578'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 11, 67.0, 11,
  0, 0, 0,
  4, 6, 0, 0,
  1, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 5 AND z.verbandsnummer = '1578'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 12, 67.0, 11,
  0, 0, 0,
  4, 6, 0, 0,
  1, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 5 AND z.verbandsnummer = '1578'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 13, 67.0, 11,
  0, 0, 0,
  4, 6, 0, 0,
  1, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 5 AND z.verbandsnummer = '1578'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 14, 67.0, 11,
  0, 0, 0,
  4, 6, 0, 0,
  1, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 5 AND z.verbandsnummer = '1578'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 15, 67.0, 11,
  0, 0, 0,
  4, 6, 0, 0,
  1, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 5 AND z.verbandsnummer = '1578'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 16, 67.0, 11,
  0, 0, 0,
  4, 6, 0, 0,
  1, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 5 AND z.verbandsnummer = '1578'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 17, 67.0, 11,
  0, 0, 0,
  4, 6, 0, 0,
  1, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 5 AND z.verbandsnummer = '1578'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 18, 67.0, 11,
  0, 0, 0,
  4, 6, 0, 0,
  1, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 5 AND z.verbandsnummer = '1578'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 19, 67.0, 11,
  0, 0, 0,
  4, 6, 0, 0,
  1, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 5 AND z.verbandsnummer = '1578'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 20, 67.0, 11,
  0, 0, 0,
  4, 6, 0, 0,
  1, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 5 AND z.verbandsnummer = '1578'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
-- ── M2025ZuePlacier.csv (Schau-ID 4) ──
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 1, 67.0, 11,
  0, 0, 0,
  4, 6, 0, 0,
  1, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 4 AND z.verbandsnummer = '1578'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 2, 67.0, 11,
  0, 0, 0,
  4, 6, 0, 0,
  1, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 4 AND z.verbandsnummer = '1578'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 3, 67.0, 11,
  0, 0, 0,
  4, 6, 0, 0,
  1, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 4 AND z.verbandsnummer = '1578'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 4, 67.0, 11,
  0, 0, 0,
  4, 6, 0, 0,
  1, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 4 AND z.verbandsnummer = '1578'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 5, 67.0, 11,
  0, 0, 0,
  4, 6, 0, 0,
  1, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 4 AND z.verbandsnummer = '1578'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 6, 67.0, 11,
  0, 0, 0,
  4, 6, 0, 0,
  1, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 4 AND z.verbandsnummer = '1578'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 7, 67.0, 11,
  0, 0, 0,
  4, 6, 0, 0,
  1, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 4 AND z.verbandsnummer = '1578'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 8, 67.0, 11,
  0, 0, 0,
  4, 6, 0, 0,
  1, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 4 AND z.verbandsnummer = '1578'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 9, 67.0, 11,
  0, 0, 0,
  4, 6, 0, 0,
  1, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 4 AND z.verbandsnummer = '1578'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 10, 67.0, 11,
  0, 0, 0,
  4, 6, 0, 0,
  1, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 4 AND z.verbandsnummer = '1578'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 11, 67.0, 11,
  0, 0, 0,
  4, 6, 0, 0,
  1, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 4 AND z.verbandsnummer = '1578'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 12, 67.0, 11,
  0, 0, 0,
  4, 6, 0, 0,
  1, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 4 AND z.verbandsnummer = '1578'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 13, 67.0, 11,
  0, 0, 0,
  4, 6, 0, 0,
  1, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 4 AND z.verbandsnummer = '1578'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 14, 67.0, 11,
  0, 0, 0,
  4, 6, 0, 0,
  1, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 4 AND z.verbandsnummer = '1578'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 15, 67.0, 11,
  0, 0, 0,
  4, 6, 0, 0,
  1, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 4 AND z.verbandsnummer = '1578'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 16, 67.0, 11,
  0, 0, 0,
  4, 6, 0, 0,
  1, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 4 AND z.verbandsnummer = '1578'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 17, 67.0, 11,
  0, 0, 0,
  4, 6, 0, 0,
  1, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 4 AND z.verbandsnummer = '1578'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 18, 67.0, 11,
  0, 0, 0,
  4, 6, 0, 0,
  1, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 4 AND z.verbandsnummer = '1578'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 19, 67.0, 11,
  0, 0, 0,
  4, 6, 0, 0,
  1, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 4 AND z.verbandsnummer = '1578'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 20, 67.0, 11,
  0, 0, 0,
  4, 6, 0, 0,
  1, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 4 AND z.verbandsnummer = '1578'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
-- ── V2025ZuePlacier.csv (Schau-ID 3) ──
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 1, 5.0, 16,
  0, 3, 0,
  11, 3, 2, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 3 AND z.verbandsnummer = '13861'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 2, 5.0, 12,
  0, 1, 0,
  7, 1, 1, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 3 AND z.verbandsnummer = '22169'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 3, 19.0, 4,
  0, 0, 0,
  1, 0, 2, 1,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 3 AND z.verbandsnummer = '283'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 4, 12.0, 4,
  0, 1, 0,
  4, 0, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 3 AND z.verbandsnummer = '1036'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 5, 21.0, 4,
  0, 0, 0,
  1, 2, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 3 AND z.verbandsnummer = '2804'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 6, 13.0, 4,
  0, 0, 0,
  3, 1, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 3 AND z.verbandsnummer = '1413'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 7, 5.0, 13,
  0, 0, 0,
  8, 4, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 3 AND z.verbandsnummer = '4535'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 8, 5.0, 12,
  0, 4, 0,
  10, 2, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 3 AND z.verbandsnummer = '12703'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 9, 6.0, 5,
  0, 1, 0,
  4, 1, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 3 AND z.verbandsnummer = '2111'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );
INSERT INTO zuecher_platzierung
  (schau_id, zuecher_id, rang, punkte_gesamt, anzahl_kaefige,
   medaillen_gold, medaillen_silber, medaillen_bronze,
   anzahl_platz_1, anzahl_platz_2, anzahl_platz_3, anzahl_platz_4,
   anzahl_platz_5, anzahl_platz_6, anzahl_platz_7,
   erstellt_am, version)
SELECT s.id, z.id, 10, 5.0, 7,
  0, 4, 0,
  5, 2, 0, 0,
  0, 0, 0,
  CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 3 AND z.verbandsnummer = '42760'
  AND NOT EXISTS (
    SELECT 1 FROM zuecher_platzierung zp
    WHERE zp.schau_id = s.id AND zp.zuecher_id = z.id
  );