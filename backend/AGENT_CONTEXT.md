# AGENT_CONTEXT.md – Schauverwaltung Backend

Dieses Dokument richtet sich ausschließlich an KI-Modelle, die Änderungen an diesem Projekt vornehmen sollen. Es ersetzt die vollständige Codeanalyse und beschreibt alle Konventionen, Abhängigkeiten und Fallstricke, die für korrekte Änderungen relevant sind.

---

## 1. Basisinformationen

**Sprache:** Java 21 (Records, sealed classes, Text Blocks nutzbar)  
**Framework:** Spring Boot 3.3, Spring Data JPA, Spring Security  
**Datenbank Produktion:** PostgreSQL 15  
**Datenbank Tests:** H2 In-Memory  
**Build:** Maven  
**Paket-Root:** `de.divowin.schauverwaltung`

---

## 2. Schichtenarchitektur — was wo hingehört

```
HTTP-Request
    ↓
Controller          – nimmt RequestDTO entgegen, gibt ResponseDTO zurück
    ↓
Service             – Geschäftslogik, Entity↔DTO-Mapping, Exception-Wurf
    ↓
Repository          – Spring Data JPA Interface, kein Implementierungscode
    ↓
Entity              – JPA-Annotationen, Transient-Berechnungen
    ↓
Datenbank
```

**Strikte Regeln:**
- Controller injizieren **ausschließlich Services**, nie Repositories direkt.
- Services geben **ausschließlich DTOs** zurück, nie Entities.
- Entities verlassen die Service-Schicht niemals als Rückgabewert.
- Fehlerbehandlung erfolgt **zentral** in `GlobalExceptionHandler` — Controller-Methoden haben kein try/catch und kein `ResponseEntity.notFound()`.

---

## 3. Vollständige Dateiübersicht mit Kurzkontext

### Hauptklasse
```
SchauverwaltungApplication.java   – @SpringBootApplication + @EnableJpaAuditing
                                    ACHTUNG: @EnableJpaAuditing hier lassen!
                                    Auslagern in JpaConfig bricht @WebMvcTest nicht,
                                    aber derzeit noch in der Hauptklasse.
```

### Config
```
config/SecurityConfig.java        – CSRF disabled, alles permitAll (Entwicklungsstand).
                                    JWT noch nicht implementiert (TODO).
```

### Controller (je eine Klasse pro Datei, alle package: controller)
```
SchauController.java              – GET/POST /v1/schauen, PATCH status
ZuecherController.java            – CRUD /v1/zuecher, GET /suche?name=
SchauanmeldungController.java     – /v1/schauen/{schauId}/anmeldungen
StandgeldController.java          – /v1/schauen/{schauId}/standgeld
MedaillenController.java          – POST /v1/schauen/{schauId}/medaillen/berechnen
SiegerController.java             – /v1/schauen/{schauId}/sieger
GlobalExceptionHandler.java       – @RestControllerAdvice für alle Controller
```

### DTOs (alle als Java Records, unveränderlich)

**Request-DTOs** (Eingabe vom Client):
```
SchauRequestDTO              – schautyp, jahr, ort, verband, standgeldProVogel, notizen
ZuecherRequestDTO            – verbandsnummer, verband, nachname, vorname, Adressfelder, katalogEinverstaendnis
SchauanmeldungRequestDTO     – zuecherId, vogelklasseId, geschlecht, ringNummer, zuchtjahr
SiegerRequestDTO             – kategorie, position, zuecherId, anmeldungId (optional), beschreibung, manuellEingetragen
```

**Response-DTOs** (Ausgabe an Client):
```
SchauDTO                     – id, schautyp, jahr, ort, verband, standgeldProVogel, status, notizen, bezeichnung, List<RichterDTO>
RichterDTO                   – id, position, nachname, vorname, vollname
ZuecherResponseDTO           – id, verbandsnummer, verband, nachname, vorname, vollname, Adressfelder, katalogEinverstaendnis
SchauanmeldungResponseDTO    – id, kaefigNummer, zuecherId, zuecherNachname, zuecherVorname, zuecherVerbandsnummer,
                               klassenschluessel, farbbezeichnung, geschlecht, ringNummer, zuchtjahr,
                               eingeliefert, platzierung, platzierungskennzeichen, medaille,
                               anzahlVoegelInKlasse, anzahlZuecherInKlasse
PlatzierungResponseDTO       – anmeldungId, kaefigNummer, platzierung, medaille
SiegerResponseDTO            – id, kategorie, position, zuecherId, zuecherNachname, zuecherVorname,
                               kaefigNummer (null wenn kein Käfig), klassenschluessel (null wenn kein Käfig),
                               beschreibung, manuellEingetragen
StandgeldDTO                 – id, schauId, zuecherId, zuecherNachname, zuecherVorname,
                               anzahlGemeldet, anzahlEingeliefert, standgeldProVogel, gesamtbetrag, bezahlt
```

### Services
```
SchauService.java            – alleSchauen, schauenNachJahr, schauById (mit Richtern!), schauAnlegen, statusAendern
                               WICHTIG: Listenabfragen geben SchauDTO mit leerer Richter-Liste zurück.
                               schauById lädt Richter via findByIdWithRichter (JOIN FETCH).
                               Fehler: wirft IllegalArgumentException (nicht EntityNotFoundException)!
                               
ZuecherService.java          – alleZuecher, zuecherById, sucheNachNachname, anlegen, aktualisieren
                               Wirft EntityNotFoundException.

SchauanmeldungService.java   – alleAnmeldungen, nichtPlatzierte, naechsteKaefigNummer, byKaefigNummer,
                               anmelden, platzierungEingeben
                               WICHTIG: kaefigNummer wird automatisch vergeben (MAX+1), nie manuell setzen.
                               Wirft EntityNotFoundException.

SiegerService.java           – siegerListe, eintragen, loeschen
                               WICHTIG: loeschen prüft ob Sieger zur übergebenen schauId gehört →
                               wirft IllegalArgumentException wenn nicht.
                               eintragen: anmeldungId ist optional (Sieger ohne Käfigbezug möglich).

StandgeldService.java        – uebersichtFuerSchau, berechneStandgeldFuerSchau
                               Wirft IllegalArgumentException (nicht EntityNotFoundException).
                               berechnen aktualisiert vorhandene Standgeld-Datensätze (kein Duplikat).

MedaillenService.java        – berechneMedaillenFuerSchau, berechneVorschau
                               Rein schreibend, keine Rückgabe (void).
                               Filtert NE- und FK-Vögel vor Medaillenberechnung heraus.
```

### Entities (alle erben von BaseEntity)

**BaseEntity** enthält: `id` (Long, auto-sequence), `erstelltAm` (LocalDateTime, auto), `geaendertAm` (LocalDateTime, auto), `version` (Long, Optimistic Locking).

```
Schau.java                   – Felder: schautyp (Enum), jahr, ort, verband (Enum), standgeldProVogel,
                               status (inner Enum Schaustatus), notizen
                               Transient: getBezeichnung() → "Meisterschau Nürnberg 2025"
                               Relations: richter (OneToMany, Lazy), anmeldungen (Lazy), sieger (Lazy)
                               UniqueConstraint: (schautyp, jahr, verband) – eine Kombination pro Jahr!

Zuecher.java                 – Felder: verbandsnummer, verband (Enum), nachname, vorname,
                               strasse, plz, wohnort, land, telefon, katalogEinverstaendnis
                               Transient: getVollname() → "Mustermann, Max" oder "Mustermann" ohne Vorname

Vogelklasse.java             – Felder: skl1, skl2 (nullable), skl3 (nullable), farbe1, farbe2 (nullable),
                               zusatzbezeichnung, dunkelfarbe
                               Transient: getKlassenschluessel() → "WP/GR/DU", getFarbbezeichnung() → "Grau Dunkel"
                               UniqueConstraint: (skl1, skl2, skl3)

Schauanmeldung.java          – Felder: schau (FK), zuecher (FK), vogelklasse (FK), richter (FK, nullable),
                               kaefigNummer, geschlecht (Enum), ringNummer, zuchtjahr, eingeliefert,
                               platzierung (1–10, nullable), platzierungskennzeichen (Enum), medaille (Enum),
                               anzahlVoegelInKlasse, anzahlZuecherInKlasse, alle Punktefelder (BigDecimal)
                               Methode: berechnePunkteGesamt() – summiert alle Teilpunkte
                               Transient: isGewertet() → eingeliefert && kennzeichen == NORMAL
                               UniqueConstraint: (schau_id, kaefig_nummer)

Sieger.java                  – Felder: schau (FK), zuecher (FK), anmeldung (FK, nullable),
                               kategorie, position (nullable), beschreibung, manuellEingetragen
                               Kein UniqueConstraint – mehrere Sieger-Einträge pro Kategorie möglich.

Standgeld.java               – Felder: schau (FK), zuecher (FK), anzahlGemeldet, anzahlEingeliefert,
                               standgeldProVogel, gesamtbetrag, bezahlt
                               Methode: berechnen() → gesamtbetrag = anzahlEingeliefert × standgeldProVogel
                               UniqueConstraint: (schau_id, zuecher_id) – pro Schau+Züchter genau ein Satz

ZuecherPlatzierung.java      – Gesamtauswertung pro Züchter und Schau. Noch nicht berechnet (TODO).
                               Felder: rang, zuecherStufe, Medaillen-Zähler, Sondertitel-Flags,
                               punkteGesamt, anzahl-Felder, anzahlPlatz1–7
                               Transient: getMedaillenGesamt()
```

### Enums
```
Schautyp          – BUNDESSCHAU(B), CLUBSCHAU(C), EUROPASCHAU(E), LANDESSCHAU(L), MEISTERSCHAU(M), VEREINSSCHAU(V)
                    vonKuerzel(String) → wirft IllegalArgumentException bei unbekanntem Kürzel!

Verband           – DWV, AZ, AGZ, DSV, OWV, OKB, SWV, KCHA, ZEWA, AEZ, AEV, AFZ, AFO, EF, FU, SLO, WSC, DKB, SONSTIGE
                    vonKuerzel(String) → gibt SONSTIGE zurück bei unbekanntem Kürzel (kein Fehler!)
                    Umlaut-normalisiert: "ÖWV" → OWV

Geschlecht        – MAENNLICH(M), WEIBLICH(W), UNBEKANNT(U)
                    vonAltCode(String) → UNBEKANNT als Fallback

Medaille          – GOLD(G,7,2), SILBER(S,5,2), BRONZE(B,3,2), KEINE(null,0,0)
                    berechnen(anzahlVoegel, anzahlZuechter) – statische Berechnungsmethode
                    vonAltCode(String) → KEINE als Fallback

Platzierungskennzeichen – NORMAL(null), NICHT_EINGELIEFERT(NE), FALSCHE_KLASSE(FK)
                    vonAltCode(String) → NORMAL als Fallback
```

### Repositories
```
SchauRepository              – findByJahrOrderBySchautypAsc, findBySchautypAndJahrAndVerband,
                               findByStatusOrder..., findByIdWithRichter (JOIN FETCH!)

ZuecherRepository            – findByNachnameContainingIgnoreCaseOrderByNachnameAsc,
                               findByVerbandOrder..., findBySchauId (JPQL distinct join)

SchauanmeldungRepository     – findBySchauIdOrderByKaefigNummerAsc, findBySchauIdAndKaefigNummer,
                               naechsteKaefigNummer (JPQL COALESCE MAX+1),
                               findNichtPlatzierte (JPQL: eingeliefert=true, platzierung IS NULL, NORMAL)

SiegerRepository             – findBySchauIdOrderByKategorieAscPositionAsc
StandgeldRepository          – findBySchauIdOrderByZuecherNachnameAsc, findBySchauIdAndZuecherId
VogelklasseRepository        – findBySkl1AndSkl2AndSkl3, lookup (JPQL mit nullable params)
ZuecherPlatzierungRepository – findRanglisteBySchauId, findMitMedailleBySchauId
```

---

## 4. Fehlerbehandlung — vollständige Übersicht

`GlobalExceptionHandler` (`@RestControllerAdvice`) fängt alle Exceptions zentral ab:

| Exception | HTTP | Wer wirft sie |
|---|---|---|
| `EntityNotFoundException` | 404 | ZuecherService, SchauanmeldungService, SiegerService |
| `IllegalArgumentException` | 400 | SchauService, StandgeldService, SiegerService.loeschen |
| `MethodArgumentNotValidException` | 422 | Spring (@Valid auf RequestDTO) |

**Neue Services** müssen sich an diese Konvention halten. Keine eigenen ExceptionHandler in einzelnen Services oder Controllern.

---

## 5. Konventionen beim Hinzufügen neuer Funktionen

### Neuer Endpunkt (Standardfall)

1. **RequestDTO** anlegen (Java Record, mit `@Valid`-Annotations)
2. **ResponseDTO** anlegen (Java Record, nur die Felder die der Client braucht)
3. **Service-Methode** implementieren: löst Entities auf, mappt zu Response-DTO
4. **Controller-Methode** hinzufügen: delegiert an Service, gibt DTO zurück
5. **Test (Service):** Mockito, `@ExtendWith(MockitoExtension.class)`, Erfolgs- und Fehlerpfade
6. **Test (Controller):** `@WebMvcTest`, `excludeAutoConfiguration = SecurityAutoConfiguration.class`

### Neue Entity

1. Von `BaseEntity` erben
2. `@SequenceGenerator` mit eigenem `sequenceName` definieren
3. Alle Beziehungen `FetchType.LAZY` — niemals `EAGER`
4. Transient-Berechnungen als `@Transient`-Methode, nicht als Feld
5. Liquibase-Migrationsskript erstellen (kein `setval()` — stattdessen `ALTER SEQUENCE ... RESTART WITH n`)

### Neuer Service

Pflichtstruktur:
```java
@Slf4j
@Service
@RequiredArgsConstructor
public class NeuerService {
    // nur Repository-Abhängigkeiten, keine anderen Services außer wenn unvermeidbar
    
    // Abfragen: @Transactional(readOnly = true)
    // Mutationen: @Transactional
    // Mapping: private XxxResponseDTO toResponse(XxxEntity e) { ... }
    // Fehler: throw new EntityNotFoundException("...") oder IllegalArgumentException
}
```

---

## 6. Bekannte Fallstricke

### H2 vs. PostgreSQL
- `setval('seq', n)` → **nicht verwenden** — nur PostgreSQL. Stattdessen: `ALTER SEQUENCE seq RESTART WITH n`
- PostgreSQL `NULLS FIRST/LAST` in ORDER BY → in H2 als JPQL formulieren, nicht als native Query

### JPA Auditing in Tests
- `@EnableJpaAuditing` steht in `SchauverwaltungApplication.java`
- `@WebMvcTest` lädt keinen JPA-Kontext → `jpaAuditingHandler` schlägt fehl
- **Lösung:** In jede `@WebMvcTest`-Klasse `@MockBean(JpaMetamodelMappingContext.class)` einfügen, ODER `@EnableJpaAuditing` in eine eigene `JpaConfig.java` auslagern (dann ist der MockBean nicht nötig)

### UniqueConstraint Schau
- `(schautyp, jahr, verband)` ist unique — es kann pro Jahr nur eine Meisterschau-DWV geben
- Test-Imports prüfen, ob dieselbe Kombination doppelt eingefügt wird

### Sieger.loeschen — Sicherheitsprüfung
- `loeschen(schauId, id)` prüft ob `sieger.getSchau().getId().equals(schauId)` → `IllegalArgumentException` wenn nicht
- Diese Prüfung ist bewusst — nicht entfernen

### SchauDTO Richter-Lazy-Loading
- `SchauService.alleSchauen()` und `schauenNachJahr()` geben `richter = List.of()` zurück
- Nur `schauById()` lädt Richter (via `findByIdWithRichter` mit JOIN FETCH)
- Kein `getRichter()` in Listenabfragen aufrufen → LazyInitializationException

### Schauanmeldung.kaefigNummer
- Wird automatisch via `naechsteKaefigNummer()` vergeben
- Nie manuell setzen oder aus dem Request übernehmen
- Wird nie wiederverwendet (auch nicht nach Löschung — Altanwendungsverhalten)

### Vollname-Logik
- `Zuecher.getVollname()` → `"Nachname, Vorname"` (Nachname zuerst, Komma)
- `Richter.getVollname()` → `"Vorname Nachname"` (Vorname zuerst, kein Komma)
- Diese unterschiedliche Formatierung ist gewollt

### Enum-Fallback-Verhalten
- `Verband.vonKuerzel(unbekannt)` → `SONSTIGE` (kein Fehler)
- `Schautyp.vonKuerzel(unbekannt)` → `IllegalArgumentException` (Fehler!)
- `Geschlecht.vonAltCode(null)` → `UNBEKANNT`
- `Medaille.vonAltCode(null)` → `KEINE`

---

## 7. Was noch nicht implementiert ist (TODO)

Diese Bereiche sind bewusst unvollständig — nicht implementieren ohne Rückfrage:

- **JWT-Authentifizierung** — SecurityConfig gibt derzeit alles frei (`permitAll`)
- **ZuecherPlatzierung-Berechnung** — Entity existiert, Service fehlt komplett
- **Klassen-Konsolidierung** — Dunkelfarben-Regelung (AZ-DWV-spezifisch)
- **Richter-Zuweisung** — `Schauanmeldung.richter` (FK) ist vorhanden aber nie befüllt
- **PDF-Generierung** — kein Dependency vorhanden
- **ZuecherPlatzierung** — Repository existiert, wird nirgends beschrieben

---

## 8. Testkonventionen

### Service-Tests
```java
@ExtendWith(MockitoExtension.class)
class XxxServiceTest {
    @Mock XxxRepository xxxRepository;
    @InjectMocks XxxService xxxService;
    // Kein Spring-Kontext, kein H2, reines Mockito
}
```

### Controller-Tests
```java
@WebMvcTest(value = XxxController.class,
        excludeAutoConfiguration = SecurityAutoConfiguration.class)
class XxxControllerTest {
    @Autowired MockMvc mockMvc;
    @Autowired ObjectMapper objectMapper;
    @MockBean XxxService xxxService;
    // Falls @EnableJpaAuditing noch in Hauptklasse: @MockBean(JpaMetamodelMappingContext.class) nötig
}
```

### Entity-/Enum-Tests
```java
// Kein @ExtendWith, kein Spring – plain JUnit 5
class SchauanmeldungTest {
    @Test void berechnePunkteGesamt_summiert() { ... }
}
```

### Testdatenbau
Entities haben keinen Konstruktor mit allen Feldern (`@NoArgsConstructor` + Setter-Muster). Beim Aufbauen von Testdaten immer `new Entity()` + einzelne Setter verwenden. Records (DTOs) hingegen über den Canonical-Konstruktor mit allen Feldern.

---

## 9. Schnell-Referenz: Wer verwendet wen

```
SchauController
  └── SchauService
        └── SchauRepository

ZuecherController
  └── ZuecherService
        └── ZuecherRepository

SchauanmeldungController
  └── SchauanmeldungService
        ├── SchauanmeldungRepository
        ├── SchauRepository
        ├── ZuecherRepository
        └── VogelklasseRepository

StandgeldController
  └── StandgeldService
        ├── SchauRepository
        ├── SchauanmeldungRepository
        └── StandgeldRepository

MedaillenController
  └── MedaillenService
        └── SchauanmeldungRepository

SiegerController
  └── SiegerService
        ├── SiegerRepository
        ├── SchauRepository
        ├── ZuecherRepository
        └── SchauanmeldungRepository
```
