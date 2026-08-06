# DivoWin – Betriebshandbuch

> ⚠️ **Daten gehen bei keinem dieser Befehle verloren.** Sie liegen im Volume `db-daten`,
> das unabhängig von den Containern existiert. Nur `docker volume rm db-daten` würde die Daten löschen.

---

## 🚀 Starten & Stoppen

| Befehl                         | Wann                                    |
| ------------------------------ | --------------------------------------- |
| `docker compose up -d --build` | **Erststart** oder nach Code-Änderungen |
| `docker compose up -d`         | Starten ohne neu zu bauen               |
| `docker compose down`          | Stoppen                                 |
| `docker compose restart`       | Neu starten ohne neu zu bauen           |

---

## 🔄 Update einspielen

```bash
git pull
docker compose up -d --build
```

---

## 📋 Logs

```bash
docker compose logs -f          # Alle Container
docker compose logs -f app      # Nur die App
docker compose logs -f db       # Nur die Datenbank
```

---

## 📊 Status prüfen

```bash
docker compose ps               # Läuft alles?
docker stats                    # CPU / RAM Verbrauch live
```

---

## 🗄 Die Datenbank

```bash
# Backup erstellen
docker exec divowin-db pg_dump -U divowin divowin > backup.sql

# Backup einspielen
docker exec -i divowin-db psql -U divowin divowin < backup.sql

# Direkt in die Datenbank verbinden
docker exec -it divowin-db psql -U divowin divowin
```

---

## 🚨 Notfall

```bash
# Alles neu starten
docker compose down
docker compose up -d

# Wenn gar nichts mehr geht – komplett neu bauen
docker compose down
docker compose up -d --build --force-recreate
```
