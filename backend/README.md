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
| Datenbank | PostgreSQL 15+ (Test: H2 In-Memory) |
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
├── db.changelog-master.xml
└── changes/
    ├── V001__initial_schema.sql
    ├── V002__...
    └── V004__import_schauen.sql
```

> **Hinweis zu Import-Skripten:** Sequence-Resets nach manuellen INSERTs müssen mit
> `ALTER SEQUENCE <name> RESTART WITH <n>` statt `setval()` formuliert werden,
> da `setval` eine PostgreSQL-exklusive Funktion ist und in H2 (Tests) nicht existiert.

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

### Schautypen

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
├── SchauverwaltungApplication.java
├── config/
│   ├── JpaConfig.java                    # @EnableJpaAuditing (ausgelagert für Testbarkeit)
│   └── SecurityConfig.java
├── controller/
│   ├── GlobalExceptionHandler.java       # RFC-9457 Problem Details
│   ├── MedaillenController.java
│   ├── SchauController.java
│   ├── SchauanmeldungController.java
│   ├── SiegerController.java
│   ├── StandgeldController.java
│   └── ZuecherController.java
├── dto/
│   ├── PlatzierungResponseDTO.java
│   ├── RichterDTO.java
│   ├── SchauDTO.java
│   ├── SchauRequestDTO.java
│   ├── SchauanmeldungRequestDTO.java
│   ├── SchauanmeldungResponseDTO.java
│   ├── SiegerRequestDTO.java
│   ├── SiegerResponseDTO.java
│   ├── StandgeldDTO.java
│   ├── ZuecherRequestDTO.java
│   └── ZuecherResponseDTO.java
├── entity/
│   ├── BaseEntity.java
│   ├── Richter.java
│   ├── Schau.java
│   ├── Schauanmeldung.java
│   ├── Sieger.java
│   ├── Standgeld.java
│   ├── Vogelklasse.java
│   ├── Zuecher.java
│   └── ZuecherPlatzierung.java
├── enums/
│   ├── Geschlecht.java
│   ├── Medaille.java                     # inkl. Berechnungsregel
│   ├── Platzierungskennzeichen.java      # NORMAL / NE / FK
│   ├── Schautyp.java
│   └── Verband.java                      # DWV, AZ, AGZ, AEZ, ...
├── repository/
│   ├── SchauRepository.java
│   ├── SchauanmeldungRepository.java
│   ├── SiegerRepository.java
│   ├── StandgeldRepository.java
│   ├── VogelklasseRepository.java
│   ├── ZuecherPlatzierungRepository.java
│   └── ZuecherRepository.java
└── service/
    ├── MedaillenService.java
    ├── SchauService.java
    ├── SchauanmeldungService.java
    ├── SiegerService.java
    ├── StandgeldService.java
    └── ZuecherService.java

src/test/java/de/divowin/schauverwaltung/
├── controller/
│   ├── GlobalExceptionHandlerTest.java
│   ├── MedaillenControllerTest.java
│   ├── SchauControllerTest.java
│   ├── SchauanmeldungControllerTest.java
│   ├── SiegerControllerTest.java
│   ├── StandgeldControllerTest.java
│   └── ZuecherControllerTest.java
├── entity/
│   └── EntityTests.java                  # Schauanmeldung, Standgeld, Vogelklasse, Zuecher, Richter
├── enums/
│   └── EnumTests.java                    # Medaille, Geschlecht, Platzierungskennzeichen, Schautyp, Verband
└── service/
    ├── MedaillenServiceTest.java
    ├── SchauServiceTest.java
    ├── SchauanmeldungServiceTest.java
    ├── SiegerServiceTest.java
    ├── StandgeldServiceTest.java
    └── ZuecherServiceTest.java
```

---

## Schichtenarchitektur

```
Controller  →  Service  →  Repository  →  Datenbank
    ↓              ↓
RequestDTO     ResponseDTO
```

Alle Controller arbeiten ausschließlich mit DTOs – JPA-Entitäten werden nie direkt als HTTP-Request oder -Response exponiert. Das Mapping zwischen Entity und DTO geschieht vollständig in der Service-Schicht.

Fehlerbehandlung erfolgt zentral im `GlobalExceptionHandler` (`@RestControllerAdvice`). Controller-Methoden werfen keine `ResponseEntity`-Konstrukte, sondern die Services lösen typisierte Exceptions aus:

| Exception | HTTP-Status |
|---|---|
| `EntityNotFoundException` | 404 Not Found |
| `IllegalArgumentException` | 400 Bad Request |
| `MethodArgumentNotValidException` | 422 Unprocessable Entity |

---

## DTOs

Alle DTOs sind als **Java Records** implementiert und damit unveränderlich. Jeder Endpunkt besitzt ein dediziertes Request- und Response-DTO.

### Request-DTOs (Eingabe)

| DTO | Endpunkt | Pflichtfelder |
|---|---|---|
| `SchauRequestDTO` | `POST /v1/schauen` | schautyp, jahr, ort, verband, standgeldProVogel |
| `ZuecherRequestDTO` | `POST/PUT /v1/zuecher` | verbandsnummer, verband, nachname |
| `SchauanmeldungRequestDTO` | `POST /v1/schauen/{id}/anmeldungen` | zuecherId, vogelklasseId, geschlecht |
| `SiegerRequestDTO` | `POST /v1/schauen/{id}/sieger` | kategorie, zuecherId |

### Response-DTOs (Ausgabe)

| DTO | Beschreibung |
|---|---|
| `SchauDTO` | Schau inkl. optionaler Richter-Liste |
| `RichterDTO` | Eingebettet in `SchauDTO` |
| `ZuecherResponseDTO` | Züchter ohne JPA-Internas, mit berechnetem `vollname` |
| `SchauanmeldungResponseDTO` | Käfig mit denormalisierten Züchter- und Klassenfeldern |
| `PlatzierungResponseDTO` | Schlanke Rückgabe nach Platzierungs-Update |
| `SiegerResponseDTO` | Sieger mit optionalen Käfig- und Klassenfeldern |
| `StandgeldDTO` | Standgeld-Abrechnung pro Züchter |

> Listenabfragen (`alleSchauen`, `schauenNachJahr`) liefern `SchauDTO` mit leerer Richter-Liste.
> Richter werden nur bei `schauById` per `JOIN FETCH` geladen.

---

## API-Endpunkte

### Schauen `/v1/schauen`

| Methode | Pfad | Beschreibung |
|---|---|---|
| `GET` | `/v1/schauen` | Alle Schauen |
| `GET` | `/v1/schauen/jahr/{jahr}` | Schauen nach Jahrgang |
| `GET` | `/v1/schauen/{id}` | Einzelne Schau mit Richtern |
| `POST` | `/v1/schauen` | Neue Schau anlegen |
| `PATCH` | `/v1/schauen/{id}/status/{status}` | Schaustatus ändern |

### Züchter `/v1/zuecher`

| Methode | Pfad | Beschreibung |
|---|---|---|
| `GET` | `/v1/zuecher` | Alle Züchter |
| `GET` | `/v1/zuecher/{id}` | Einzelnen Züchter abrufen |
| `GET` | `/v1/zuecher/suche?name=` | Suche nach Nachname |
| `POST` | `/v1/zuecher` | Züchter anlegen |
| `PUT` | `/v1/zuecher/{id}` | Züchter vollständig aktualisieren |

### Anmeldungen `/v1/schauen/{schauId}/anmeldungen`

| Methode | Pfad | Beschreibung |
|---|---|---|
| `GET` | `.../anmeldungen` | Alle Anmeldungen (nach Käfignummer) |
| `GET` | `.../anmeldungen/nicht-platziert` | Qualitätskontrolle: unbewertet |
| `GET` | `.../anmeldungen/naechste-kaefignummer` | Nächste freie Käfignummer |
| `GET` | `.../anmeldungen/kaefig/{nr}` | Käfig per Nummer |
| `POST` | `.../anmeldungen` | Vogel anmelden (Käfignummer wird automatisch vergeben) |
| `PATCH` | `.../anmeldungen/kaefig/{nr}/platzierung/{platz}` | Platzierung eingeben |

### Standgeld `/v1/schauen/{schauId}/standgeld`

| Methode | Pfad | Beschreibung |
|---|---|---|
| `GET` | `.../standgeld` | Übersicht |
| `POST` | `.../standgeld/berechnen` | Neu berechnen |

### Medaillen `/v1/schauen/{schauId}/medaillen`

| Methode | Pfad | Beschreibung |
|---|---|---|
| `POST` | `.../medaillen/berechnen` | Medaillen für alle Klassen berechnen |

### Sieger `/v1/schauen/{schauId}/sieger`

| Methode | Pfad | Beschreibung |
|---|---|---|
| `GET` | `.../sieger` | Siegerliste |
| `POST` | `.../sieger` | Sieger eintragen |
| `DELETE` | `.../sieger/{id}` | Sieger löschen |

---

## Geschäftslogik

### Medaillenberechnung (`MedaillenService`)

Automatische Vergabe nach der Regel aus der Altanwendung (Feld `Medaille` in Schaudaten.db):

| Medaille | Mindest-Vögel | Mindest-Züchter |
|---|---|---|
| Gold | 7 | 2 |
| Silber | 5 | 2 |
| Bronze | 3 | 2 |
| Keine | – | – |

NE (nicht eingeliefert) und FK (falsche Klasse) werden nicht gezählt. Nicht platzierte Vögel erhalten auch bei medaillenberechtigter Klasse `KEINE`.

### Standgeldberechnung (`StandgeldService`)

- Pro eingelierfertem Vogel × Standgeld-Satz aus der Schaukonfiguration
- NE-Vögel (nicht eingeliefert) werden nicht berechnet
- Bestehende Standgeld-Datensätze werden bei Neuberechnung aktualisiert (kein Duplikat)

### Käfignummernvergabe

Die Käfignummer wird beim Anmelden automatisch als `MAX(kaefigNummer) + 1` vergeben und nie wiederverwendet — identisches Verhalten zur Altanwendung.

---

## Tests

### Strategie

| Ebene | Framework | Fokus |
|---|---|---|
| Service | Mockito (`@ExtendWith`) | Geschäftslogik, Mapping, Fehlerpfade |
| Controller | MockMvc (`@WebMvcTest`) | HTTP-Status, JSON-Struktur, Validierung |
| Entity | JUnit 5 (plain) | Berechnungsmethoden, Transient-Felder |
| Enum | JUnit 5 (plain) | `vonAltCode`/`vonKuerzel`, Randfälle |

### Konfiguration für `@WebMvcTest`

Da `@EnableJpaAuditing` in der separaten `JpaConfig`-Klasse liegt (nicht in der Hauptklasse), wird der `jpaAuditingHandler` bei `@WebMvcTest` nicht geladen. Controller-Tests benötigen daher **keinen** `@MockBean(JpaMetamodelMappingContext.class)`-Workaround.

```bash
mvn test
```

---

## TODO / Offene Punkte

- [ ] JWT-Authentifizierung implementieren
- [ ] `ZuecherPlatzierung`-Berechnung (Aggregation aller Vogelpunkte)
- [ ] Klassen-Konsolidierungslogik (Dunkelfarben-Regelung AZ-DWV)
- [ ] Richter-Zuweisung zu Käfigen
- [ ] PDF-Generierung (Käfigaufkleber, Bewertungslisten, Katalog, Urkunden)
- [ ] HTML-Export Siegerliste (entspricht `Siegerliste_Internet.exe`)
- [ ] Testcontainers-Integration für PostgreSQL-spezifische Tests
