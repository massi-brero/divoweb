# API-Endpunkte – DivoWin Schauverwaltung

## Schauen `/v1/schauen`

| Methode | Pfad | Beschreibung |
|---|---|---|
| `GET` | `/v1/schauen` | Alle Schauen |
| `GET` | `/v1/schauen/jahr/{jahr}` | Schauen nach Jahrgang |
| `GET` | `/v1/schauen/{id}` | Einzelne Schau mit Richtern |
| `POST` | `/v1/schauen` | Neue Schau anlegen |
| `PATCH` | `/v1/schauen/{id}/status/{status}` | Schaustatus ändern |

## Züchter `/v1/zuecher`

| Methode | Pfad | Beschreibung |
|---|---|---|
| `GET` | `/v1/zuecher` | Alle Züchter |
| `GET` | `/v1/zuecher/{id}` | Züchter nach ID |
| `GET` | `/v1/zuecher/suche?name=` | Züchter nach Name suchen |
| `POST` | `/v1/zuecher` | Züchter anlegen |
| `PUT` | `/v1/zuecher/{id}` | Züchter aktualisieren |

## Anmeldungen `/v1/schauen/{schauId}/anmeldungen`

| Methode | Pfad | Beschreibung |
|---|---|---|
| `GET` | `/v1/schauen/{schauId}/anmeldungen` | Alle Anmeldungen einer Schau |
| `GET` | `/v1/schauen/{schauId}/anmeldungen/nicht-platziert` | Nicht platzierte Vögel |
| `GET` | `/v1/schauen/{schauId}/anmeldungen/naechste-kaefignummer` | Nächste freie Käfignummer |
| `GET` | `/v1/schauen/{schauId}/anmeldungen/kaefig/{kaefigNummer}` | Käfig per Nummer |
| `POST` | `/v1/schauen/{schauId}/anmeldungen` | Vogel anmelden |
| `PATCH` | `/v1/schauen/{schauId}/anmeldungen/kaefig/{kaefigNummer}/platzierung/{platz}` | Platzierung eingeben |

## Standgeld `/v1/schauen/{schauId}/standgeld`

| Methode | Pfad | Beschreibung |
|---|---|---|
| `GET` | `/v1/schauen/{schauId}/standgeld` | Standgeld-Übersicht |
| `POST` | `/v1/schauen/{schauId}/standgeld/berechnen` | Standgeld neu berechnen |

## Medaillen `/v1/schauen/{schauId}/medaillen`

| Methode | Pfad | Beschreibung |
|---|---|---|
| `POST` | `/v1/schauen/{schauId}/medaillen/berechnen` | Medaillen berechnen |

## Sieger `/v1/schauen/{schauId}/sieger`

| Methode | Pfad | Beschreibung |
|---|---|---|
| `GET` | `/v1/schauen/{schauId}/sieger` | Siegerliste |
| `POST` | `/v1/schauen/{schauId}/sieger` | Sieger eintragen |
| `DELETE` | `/v1/schauen/{schauId}/sieger/{id}` | Sieger löschen |

---

**Gesamt: 20 Endpunkte** über 6 Controller