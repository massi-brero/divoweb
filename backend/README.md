# DivoWin Schauverwaltung – Backend

Neuentwicklung der DivoWin Vogelschau-Verwaltungssoftware auf Basis von Java 21 / Spring Boot 3 / PostgreSQL.

**Ursprüngliche Software:** Dieter Vogelsänger, DivoWinSchau DWV, Copyright 2011–2018  
**Technologie Altanwendung:** Borland Delphi 5 / BDE 5.x / Paradox-Datenbankformat

---

## Technologie-Stack

| Schicht | Technologie |
|---|---|
| Sprache | Java 21 |
| Framework | Spring Boot 3.3 |
| Datenbankzugriff | Spring Data JPA / Hibernate |
| Datenbank | PostgreSQL 15+ |
| Migrationen | Liquibase |
| Build | Maven |
| API-Dokumentation | SpringDoc OpenAPI (Swagger UI) |

---

## Schnellstart

### Voraussetzungen
- Java 21+
- Maven 3.9+
- PostgreSQL 15+ (oder Docker)

### Datenbank anlegen

```sql
CREATE DATABASE divowin;
CREATE USER divowin WITH PASSWORD 'divowin';
GRANT ALL PRIVILEGES ON DATABASE divowin TO divowin;
```

### Oder mit Docker

```bash
docker run -d \
  --name divowin-db \
  -e POSTGRES_DB=divowin \
  -e POSTGRES_USER=divowin \
  -e POSTGRES_PASSWORD=divowin \
  -p 5432:5432 \
  postgres:15
```

### Anwendung starten

```bash
mvn spring-boot:run -Dspring-boot.run.profiles=dev
```

Die API ist dann erreichbar unter:
- **API:** http://localhost:8080/api/v1/
- **Swagger UI:** http://localhost:8080/api/swagger-ui.html
- **OpenAPI JSON:** http://localhost:8080/api/v3/api-docs

---

## Datenbankschema

Das Schema wird automatisch durch Liquibase angelegt.

```
src/main/resources/db/changelog/
├── db.changelog-master.xml          # Master-Changelog (inkludiert alle Changes)
└── changes/
    └── v1-initial-schema.xml        # Alle Tabellen, Constraints, Indizes, Views
```

### Tabellen und Entsprechung zur Altanwendung

| Neue Tabelle | Altanwendung (.db-Dateien) | Beschreibung |
|---|---|---|
| `zuecher` | `Adressen.DB` | Züchter/Aussteller-Stammdaten |
| `vogelklasse` | `Farbe.DB` | Vogelklassen / Farbklassen-Lookup |
| `schau` | `[X][Jahr]Zuri.db` | Schaukonfiguration (B2025, L2025, ...) |
| `richter` | Felder ZuRi1–ZuRi18 in Zuri.db | Zuchtrichter (normalisiert) |
| `schauanmeldung` | `[X][Jahr]Schaudaten.db` | Käfig/Vogel-Daten (Haupttabelle) |
| `sieger` | `[X][Jahr]Siegerliste.db` | Siegerliste |
| `standgeld` | `[X][Jahr]Standgeld.db` | Standgeld-Abrechnung |
| `zuecher_platzierung` | `[X][Jahr]ZuePlacier.db` + `Medliste.DB` | Züchter-Gesamtauswertung |

### Schautypen (Feld `schautyp` in Tabelle `schau`)

| Wert | Altanwendung-Präfix | Beschreibung |
|---|---|---|
| `BUNDESSCHAU` | `B` | Bundesschau |
| `CLUBSCHAU` | `C` | Clubschau |
| `EUROPASCHAU` | `E` | Europaschau / Exotenschau |
| `LANDESSCHAU` | `L` | Landesschau |
| `MEISTERSCHAU` | `M` | Meisterschau |
| `VEREINSSCHAU` | `V` | Vereinsschau |

---

## Projektstruktur

```
src/main/java/de/divowin/schauverwaltung/
├── SchauverwaltungApplication.java   # Hauptklasse
├── config/
│   └── SecurityConfig.java           # Spring Security
├── controller/
│   └── SchauverwaltungController.java # REST-Endpunkte (alle Controller)
├── dto/
│   ├── RichterDTO.java               # DTO für Richter (Teil von SchauDTO)
│   ├── SchauDTO.java                 # DTO für Schau-Rückgaben
│   └── StandgeldDTO.java             # DTO für Standgeld-Rückgaben
├── entity/
│   ├── BaseEntity.java               # Audit-Basisklasse
│   ├── Zuecher.java                  # ← Adressen.DB
│   ├── Vogelklasse.java              # ← Farbe.DB
│   ├── Schau.java                    # ← Zuri.db
│   ├── Richter.java                  # ← ZuRi1-18 Felder
│   ├── Schauanmeldung.java           # ← Schaudaten.DB (Haupttabelle)
│   ├── Sieger.java                   # ← Siegerliste.db
│   ├── Standgeld.java                # ← Standgeld.db
│   └── ZuecherPlatzierung.java       # ← ZuePlacier.db + Medliste.DB
├── enums/
│   ├── Geschlecht.java
│   ├── Medaille.java                 # inkl. Berechnungsregel
│   ├── Platzierungskennzeichen.java  # NORMAL / NE / FK
│   ├── Schautyp.java
│   └── Verband.java                  # DWV, AZ, AGZ, AEZ, ...
├── repository/
│   ├── SchauRepository.java
│   ├── ZuecherRepository.java
│   ├── SchauanmeldungRepository.java
│   ├── VogelklasseRepository.java
│   ├── SiegerRepository.java
│   ├── StandgeldRepository.java
│   └── ZuecherPlatzierungRepository.java
└── service/
    ├── SchauService.java             # gibt SchauDTO / List<SchauDTO> zurück
    ├── MedaillenService.java         # Medaillen-Berechnungslogik
    └── StandgeldService.java         # gibt StandgeldDTO / List<StandgeldDTO> zurück

src/test/java/de/divowin/schauverwaltung/
├── SchauverwaltungApplicationTests.java  # Kontexttest
└── service/
    ├── SchauServiceTest.java             # Unit-Tests SchauService
    └── StandgeldServiceTest.java         # Unit-Tests StandgeldService
```

---

## Schichtenarchitektur

```
Controller  →  Service  →  Repository  →  Datenbank
               ↓
              DTO
```

Services geben ausschließlich DTOs zurück – JPA-Entitäten verlassen die Service-Schicht nicht. Controller, die keine eigene Service-Schicht besitzen (Züchter, Anmeldungen, Sieger), arbeiten noch direkt auf den Repositories und liefern die Entitäten als JSON-Response.

### DTOs

Alle DTOs sind als **Java Records** implementiert und damit unveränderlich.

| DTO | Service | Felder |
|---|---|---|
| `SchauDTO` | `SchauService` | id, schautyp, jahr, ort, verband, standgeldProVogel, status, notizen, bezeichnung, richter |
| `RichterDTO` | Teil von `SchauDTO` | id, position, nachname, vorname, vollname |
| `StandgeldDTO` | `StandgeldService` | id, schauId, zuecherId, zuecherNachname, zuecherVorname, anzahlGemeldet, anzahlEingeliefert, standgeldProVogel, gesamtbetrag, bezahlt |

> **Hinweis:** Listenabfragen (`alleSchauen`, `schauenNachJahr`) liefern `SchauDTO` mit einer leeren Richter-Liste. Die Richter werden nur beim Einzelabruf (`schauById`) per JOIN FETCH geladen und vollständig gemappt.

---

## Geschäftslogik

### Medaillenberechnung (`MedaillenService`)
Automatische Vergabe nach der Regel aus der Altanwendung:
- **Gold:** ≥ 7 Vögel aus ≥ 2 Züchtern in der Klasse
- **Silber:** ≥ 5 Vögel aus ≥ 2 Züchtern
- **Bronze:** ≥ 3 Vögel aus ≥ 2 Züchtern
- **Keine:** < 3 Vögel oder nur 1 Züchter

NE (nicht eingeliefert) und FK (falsche Klasse) werden nicht gezählt.

### Standgeldberechnung (`StandgeldService`)
- Pro eingelierfertem Vogel × Standgeld-Satz aus Schaukonfiguration
- NE-Vögel werden nicht berechnet

---

## TODO / Offene Punkte

- [ ] JWT-Authentifizierung implementieren
- [ ] PDF-Generierung (Käfigaufkleber, Bewertungslisten, Katalog, Urkunden)
- [ ] HTML-Export Siegerliste (entspricht `Siegerliste_Internet.exe`)
- [ ] Klassen-Konsolidierungslogik (Dunkelfarben-Regelung AZ-DWV)
- [ ] Richter-Zuweisung zu Käfigen
- [ ] ZuecherPlatzierung-Berechnung (Aggregation aller Vogelpunkte)
- [ ] Testcontainers-Tests mit PostgreSQL
