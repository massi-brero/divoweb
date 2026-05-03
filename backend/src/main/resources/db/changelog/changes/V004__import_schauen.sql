-- V004__import_schauen.sql
-- Schau-Datensätze, abgeleitet aus Dateinamen-Konvention der Altanwendung

INSERT INTO schau (id, schautyp, jahr, ort, verband, standgeld_pro_vogel, status, erstellt_am, version) VALUES
  (1, 'BUNDESSCHAU', 2025, 'Messe 2025', 'DWV', 3.00, 'ARCHIVIERT', CURRENT_TIMESTAMP, 0),
  (2, 'EUROPASCHAU', 2025, 'Europaschau 2025', 'DWV', 2.50, 'ARCHIVIERT', CURRENT_TIMESTAMP, 0),
  (3, 'VEREINSSCHAU', 2025, 'Vereinsschau 2025', 'DWV', 2.50, 'ARCHIVIERT', CURRENT_TIMESTAMP, 0),
  (4, 'MEISTERSCHAU', 2025, 'Meisterschau 2025', 'DWV', 2.50, 'ARCHIVIERT', CURRENT_TIMESTAMP, 0),
  (5, 'LANDESSCHAU', 2018, 'Landesschau 2018', 'DWV', 2.50, 'ARCHIVIERT', CURRENT_TIMESTAMP, 0);

-- Sequences nach manuellen Inserts anpassen
ALTER SEQUENCE schau_seq RESTART WITH 6;