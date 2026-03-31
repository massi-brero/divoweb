-- V006__import_standgeld.sql
-- Standgeld-Abrechnungen aus *Standgeld.DB-Dateien

-- ── E2025Standgeld.csv (Schau-ID 2) ──
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  8,
  8,
  2.50, 32.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '7290'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  8,
  8,
  2.50, 32.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '9814'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  4,
  4,
  2.50, 16.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '35005'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  12,
  12,
  2.50, 48.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '38851'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  20,
  20,
  2.50, 80.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '311'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  8,
  8,
  2.50, 32.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '48664'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  8,
  8,
  2.50, 32.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '47305'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  12,
  12,
  2.50, 48.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '10294'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  9,
  9,
  2.50, 36.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '51374'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  12,
  12,
  2.50, 48.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '51778'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  8,
  8,
  2.50, 32.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '7989'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  12,
  12,
  2.50, 48.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '51885'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  20,
  20,
  2.50, 80.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '247'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  25,
  25,
  2.50, 100.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '214'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  4,
  4,
  2.50, 16.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '25619'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  8,
  8,
  2.50, 32.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '063'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  4,
  4,
  2.50, 16.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '496'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  6,
  6,
  2.50, 24.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '33'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  8,
  8,
  2.50, 32.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '95'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  14,
  14,
  2.50, 56.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '23424'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  4,
  4,
  2.50, 16.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '343'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  6,
  6,
  2.50, 24.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '4625'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  32,
  32,
  2.50, 128.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '159'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  8,
  8,
  2.50, 32.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '34393'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  3,
  3,
  2.50, 12.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '50092'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  9,
  9,
  2.50, 36.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '51586'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  3,
  3,
  2.50, 12.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '40'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  7,
  7,
  2.50, 28.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '10'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  25,
  25,
  2.50, 100.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '3902'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  6,
  6,
  2.50, 24.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '49561'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  8,
  8,
  2.50, 32.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '31913'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  3,
  3,
  2.50, 12.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '067'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  50,
  50,
  2.50, 200.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '125'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  8,
  8,
  2.50, 32.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '31957'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  12,
  12,
  2.50, 48.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '48576'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  8,
  8,
  2.50, 32.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '8407'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  4,
  4,
  2.50, 16.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '373'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  8,
  8,
  2.50, 32.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '49055'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  32,
  32,
  2.50, 128.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '2570'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  12,
  12,
  2.50, 48.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '2917'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  8,
  8,
  2.50, 32.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '0492'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  10,
  10,
  2.50, 40.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '812'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  10,
  10,
  2.50, 40.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '13528'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  12,
  12,
  2.50, 48.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '47260'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  25,
  25,
  2.50, 100.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '798'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  8,
  8,
  2.50, 32.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '47305'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  12,
  12,
  2.50, 48.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '3522'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  6,
  6,
  2.50, 24.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '38313'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  8,
  8,
  2.50, 32.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '2117'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  12,
  12,
  2.50, 48.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '10294'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  9,
  9,
  2.50, 36.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '51374'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  8,
  8,
  2.50, 32.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '1919'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  16,
  16,
  2.50, 64.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '2555'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  6,
  6,
  2.50, 24.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '22787'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  4,
  4,
  2.50, 16.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '19385'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  16,
  16,
  2.50, 64.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '13576'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  12,
  12,
  2.50, 48.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '3287'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  4,
  4,
  2.50, 16.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '1083'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  8,
  8,
  2.50, 32.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '6728'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  12,
  12,
  2.50, 48.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '3653'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  28,
  28,
  2.50, 112.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '36381'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  20,
  20,
  2.50, 80.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '13526'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  16,
  16,
  2.50, 64.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '16961'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  8,
  8,
  2.50, 32.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '4535'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  3,
  3,
  2.50, 12.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '40'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  4,
  4,
  2.50, 16.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '12657'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  16,
  16,
  2.50, 64.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '12612'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  1,
  1,
  2.50, 4.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '02917'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  8,
  8,
  2.50, 32.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '10524'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  12,
  12,
  2.50, 48.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '10294'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  9,
  9,
  2.50, 36.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '51374'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  8,
  8,
  2.50, 32.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '1919'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  16,
  16,
  2.50, 64.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '2555'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  2,
  2,
  2.50, 8.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '54'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  5,
  5,
  2.50, 20.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '001'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  8,
  8,
  2.50, 32.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '21518'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  4,
  4,
  2.50, 16.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '35096'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  8,
  8,
  2.50, 32.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '063'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  4,
  4,
  2.50, 16.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '496'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  2,
  2,
  2.50, 8.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '033'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  6,
  6,
  2.50, 24.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '33'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  8,
  8,
  2.50, 32.00, TRUE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 2 AND z.verbandsnummer = '27261'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
-- ── L2018Standgeld.csv (Schau-ID 5) ──
-- ── M2025Standgeld.csv (Schau-ID 4) ──
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  13,
  13,
  2.50, 0.00, FALSE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 4 AND z.verbandsnummer = '4535'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  4,
  4,
  2.50, 0.00, FALSE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 4 AND z.verbandsnummer = '283'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  4,
  4,
  2.50, 0.00, FALSE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 4 AND z.verbandsnummer = '1036'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  12,
  12,
  2.50, 0.00, FALSE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 4 AND z.verbandsnummer = '111'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  24,
  24,
  2.50, 0.00, FALSE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 4 AND z.verbandsnummer = '42760'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  5,
  5,
  2.50, 0.00, FALSE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 4 AND z.verbandsnummer = '2111'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  16,
  16,
  2.50, 0.00, FALSE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 4 AND z.verbandsnummer = '13861'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  12,
  12,
  2.50, 0.00, FALSE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 4 AND z.verbandsnummer = '12703'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  4,
  4,
  2.50, 0.00, FALSE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 4 AND z.verbandsnummer = '1413'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  5,
  5,
  2.50, 0.00, FALSE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 4 AND z.verbandsnummer = '2111'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  16,
  16,
  2.50, 0.00, FALSE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 4 AND z.verbandsnummer = '13861'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  12,
  12,
  2.50, 0.00, FALSE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 4 AND z.verbandsnummer = '12703'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  4,
  4,
  2.50, 0.00, FALSE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 4 AND z.verbandsnummer = '1413'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  4,
  4,
  2.50, 0.00, FALSE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 4 AND z.verbandsnummer = '2804'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
-- ── V2025Standgeld.csv (Schau-ID 3) ──
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  13,
  13,
  2.50, 0.00, FALSE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 3 AND z.verbandsnummer = '4535'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  4,
  4,
  2.50, 0.00, FALSE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 3 AND z.verbandsnummer = '283'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  4,
  4,
  2.50, 0.00, FALSE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 3 AND z.verbandsnummer = '1036'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  7,
  7,
  2.50, 0.00, FALSE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 3 AND z.verbandsnummer = '42760'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  5,
  5,
  2.50, 0.00, FALSE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 3 AND z.verbandsnummer = '2111'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  12,
  12,
  2.50, 0.00, FALSE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 3 AND z.verbandsnummer = '22169'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  12,
  12,
  2.50, 0.00, FALSE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 3 AND z.verbandsnummer = '12703'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  4,
  4,
  2.50, 0.00, FALSE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 3 AND z.verbandsnummer = '1413'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  16,
  16,
  2.50, 0.00, FALSE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 3 AND z.verbandsnummer = '13861'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  12,
  12,
  2.50, 0.00, FALSE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 3 AND z.verbandsnummer = '22169'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  12,
  12,
  2.50, 0.00, FALSE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 3 AND z.verbandsnummer = '12703'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  4,
  4,
  2.50, 0.00, FALSE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 3 AND z.verbandsnummer = '1413'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );
INSERT INTO standgeld
  (schau_id, zuecher_id, anzahl_gemeldet, anzahl_eingeliefert,
   standgeld_pro_vogel, gesamtbetrag, bezahlt, erstellt_am, version)
SELECT s.id, z.id,
  4,
  4,
  2.50, 0.00, FALSE, CURRENT_TIMESTAMP, 0
FROM schau s, zuecher z
WHERE s.id = 3 AND z.verbandsnummer = '2804'
  AND NOT EXISTS (
    SELECT 1 FROM standgeld sg WHERE sg.schau_id = s.id AND sg.zuecher_id = z.id
  );