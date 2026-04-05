<div align="center">

# 🐦 DivoWin Schauverwaltung

**Moderne Neuentwicklung der DivoWin Vogelschau-Verwaltungssoftware**

[![Java](https://img.shields.io/badge/Java-21-orange?logo=openjdk&logoColor=white)](https://openjdk.org/projects/jdk/21/)
[![Spring Boot](https://img.shields.io/badge/Spring%20Boot-3.3-6DB33F?logo=springboot&logoColor=white)](https://spring.io/projects/spring-boot)
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-15+-4169E1?logo=postgresql&logoColor=white)](https://www.postgresql.org/)
[![Liquibase](https://img.shields.io/badge/Liquibase-enabled-2962FF?logo=liquibase&logoColor=white)](https://www.liquibase.org/)
[![License](https://img.shields.io/badge/Ursprung-Dieter%20Vogelsänger%202011–2018-lightgrey)](#)

Ursprüngliche Software: **Borland Delphi 5 / BDE 5.x / Paradox-Datenbankformat**  
Neuentwicklung: **Java 21 / Spring Boot 3 / PostgreSQL / REST API**

</div>

---

## 📋 Inhaltsverzeichnis

- [Über das Projekt](#-über-das-projekt)
- [Technologie-Stack](#-technologie-stack)
- [Schnellstart](#-schnellstart)
- [API-Endpunkte](#-api-endpunkte)
- [Geschäftslogik](#-geschäftslogik)
- [Datenbankschema](#-datenbankschema)
- [Tests](#-tests)
- [Roadmap](#-roadmap)

---

## 🎯 Über das Projekt

DivoWin Schauverwaltung ist die vollständige Neuentwicklung einer bewährten Vogelschau-Software aus dem Jahr 2011. Die Altanwendung verwaltete Vogelschauen über eine Vielzahl von Paradox-Datenbankdateien (`.db`) pro Schau und Jahr. Diese Architektur wird hier durch ein modernes, einheitliches REST-Backend abgelöst.

**Was das System verwaltet:**
- 🏆 Schauen (Bundes-, Landes-, Vereinsschauen u.v.m.)
- 🧑‍🌾 Züchter und Aussteller
- 🐤 Vogelanmeldungen und Käfigverwaltung
- 🥇 Medaillen- und Platzierungsberechnung
- 💶 Standgeld-Abrechnung pro Züchter
- 🏅 Siegerlisten

---

## 🛠 Technologie-Stack

| Schicht | Technologie |
|---|---|
| Sprache | Java 21 |
| Framework | Spring Boot 3.3 |
| Datenbankzugriff | Spring Data JPA / Hibernate |
| Datenbank | PostgreSQL 15+ |
| Migrationen | Liquibase |
| Build | Maven |
| API-Dokumentation | SpringDoc OpenAPI (Swagger UI) |
| Tests | JUnit 5, Mockito, AssertJ |

---

## 🚀 Schnellstart

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

| Oberfläche | URL |
|---|---|
| REST API | http://localhost:8080/api/v1/ |
| Swagger UI | http://localhost:8080/api/swagger-ui.html |
| OpenAPI JSON | http://localhost:8080/api/v3/api-docs |

---


### Schichtenarchitektur

```
Controller  ──►  Service  ──►  Repository  ──►  Datenbank
                   │
                   ▼
                  DTO           ← Services geben ausschließlich
                                  DTOs nach außen weiter
```

---

## 🌐 API-Endpunkte

### 🏟 Schauen

| Methode | Pfad | Beschreibung |
|---|---|---|
| `GET` | `/v1/schauen` | Alle Schauen |
| `GET` | `/v1/schauen/jahr/{jahr}` | Schauen nach Jahrgang |
| `GET` | `/v1/schauen/{id}` | Einzelne Schau mit Richtern |
| `POST` | `/v1/schauen` | Neue Schau anlegen |
| `PATCH` | `/v1/schauen/{id}/status/{status}` | Schaustatus ändern |

### 🧑‍🌾 Züchter

| Methode | Pfad | Beschreibung |
|---|---|---|
| `GET` | `/v1/zuecher` | Alle Züchter |
| `GET` | `/v1/zuecher/{id}` | Züchter nach ID |
| `GET` | `/v1/zuecher/suche?name=` | Züchter nach Name suchen |
| `POST` | `/v1/zuecher` | Züchter anlegen |
| `PUT` | `/v1/zuecher/{id}` | Züchter aktualisieren |

### 🐤 Anmeldungen

| Methode | Pfad | Beschreibung |
|---|---|---|
| `GET` | `/v1/schauen/{schauId}/anmeldungen` | Alle Anmeldungen einer Schau |
| `GET` | `/v1/schauen/{schauId}/anmeldungen/nicht-platziert` | Nicht platzierte Vögel |
| `GET` | `/v1/schauen/{schauId}/anmeldungen/naechste-kaefignummer` | Nächste freie Käfignummer |
| `GET` | `/v1/schauen/{schauId}/anmeldungen/kaefig/{kaefigNummer}` | Käfig per Nummer |
| `POST` | `/v1/schauen/{schauId}/anmeldungen` | Vogel anmelden |
| `PATCH` | `/v1/schauen/{schauId}/anmeldungen/kaefig/{kaefigNummer}/platzierung/{platz}` | Platzierung eingeben |

### 💶 Standgeld

| Methode | Pfad | Beschreibung |
|---|---|---|
| `GET` | `/v1/schauen/{schauId}/standgeld` | Standgeld-Übersicht |
| `POST` | `/v1/schauen/{schauId}/standgeld/berechnen` | Standgeld neu berechnen |

### 🥇 Medaillen

| Methode | Pfad | Beschreibung |
|---|---|---|
| `POST` | `/v1/schauen/{schauId}/medaillen/berechnen` | Medaillen für alle Klassen berechnen |

### 🏅 Sieger

| Methode | Pfad | Beschreibung |
|---|---|---|
| `GET` | `/v1/schauen/{schauId}/sieger` | Siegerliste |
| `POST` | `/v1/schauen/{schauId}/sieger` | Sieger eintragen |
| `DELETE` | `/v1/schauen/{schauId}/sieger/{id}` | Sieger löschen |

> Vollständige Dokumentation aller Request- und Response-Bodies: **Swagger UI** unter `/api/swagger-ui.html`

---

## ⚙️ Geschäftslogik

### 🥇 Medaillenberechnung

Automatische Vergabe nach den Regeln der Altanwendung, berechnet pro Vogelklasse:

| Medaille | Mindestanzahl Vögel | Mindestanzahl Züchter |
|---|---|---|
| 🥇 Gold | ≥ 7 | ≥ 2 |
| 🥈 Silber | ≥ 5 | ≥ 2 |
| 🥉 Bronze | ≥ 3 | ≥ 2 |
| – Keine | < 3 | beliebig |

Vögel mit Kennzeichen **NE** (nicht eingeliefert) oder **FK** (falsche Klasse) werden nicht gewertet.

### 💶 Standgeldberechnung

```
Gesamtbetrag = Anzahl eingelieferter Vögel × Standgeld-Satz (aus Schaukonfiguration)
```

NE-Vögel werden nicht berechnet. Der Satz ist pro Schau konfigurierbar (typisch 2,50 – 3,00 €).

---

## 🗄 Datenbankschema

| Tabelle | Altanwendung | Beschreibung |
|---|---|---|
| `zuecher` | `Adressen.DB` | Züchter-Stammdaten |
| `vogelklasse` | `Farbe.DB` | Vogelklassen-Lookup |
| `schau` | `[X][Jahr]Zuri.db` | Schaukonfiguration |
| `richter` | Felder ZuRi1–ZuRi18 | Zuchtrichter (normalisiert) |
| `schauanmeldung` | `[X][Jahr]Schaudaten.db` | Käfig/Vogel-Daten |
| `sieger` | `[X][Jahr]Siegerliste.db` | Siegerliste |
| `standgeld` | `[X][Jahr]Standgeld.db` | Standgeld-Abrechnung |
| `zuecher_platzierung` | `ZuePlacier.db` + `Medliste.DB` | Züchter-Gesamtauswertung |

Das Schema wird automatisch durch **Liquibase** beim Start angelegt:

```
src/main/resources/db/changelog/
├── db.changelog-master.xml
└── changes/
    └── v1-initial-schema.xml
```

---

## 🧪 Tests

```bash
mvn test
```

| Testklasse | Art | Beschreibung |
|---|---|---|
| `SchauverwaltungApplicationTests` | Integration | Spring-Kontext startet korrekt |
| `SchauServiceTest` | Unit | 9 Tests: CRUD, Richter-Mapping, Fehlerfälle |
| `StandgeldServiceTest` | Unit | 6 Tests: Berechnung, NE-Vögel, Update-Logik |

---

## 🗺 Roadmap

- [ ] JWT-Authentifizierung
- [ ] Datenmigration aus Paradox-Dateien (Python-Skript)
- [ ] PDF-Generierung (Käfigaufkleber, Bewertungslisten, Katalog, Urkunden)
- [ ] HTML-Export Siegerliste (`Siegerliste_Internet.exe`-Ersatz)
- [ ] Klassen-Konsolidierungslogik (Dunkelfarben-Regelung AZ/DWV)
- [ ] Richter-Zuweisung zu Käfigen
- [ ] ZuecherPlatzierung-Berechnung (Aggregation aller Vogelpunkte)
- [ ] Testcontainers-Tests mit echter PostgreSQL-Instanz
- [ ] DTOs für Züchter, Schauanmeldung und Sieger (inkl. eigene Service-Schicht)

---

<div align="center">

Ursprüngliche Software © 2011–2018 Dieter Vogelsänger

</div>
