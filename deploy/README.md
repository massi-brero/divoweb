# Überwachung Auto-Deploy – Wellensittich-App

Kurzreferenz der wichtigsten Befehle, um den Auto-Deploy-Mechanismus (systemd-Timer
+ Docker Compose) zu überwachen und im Fehlerfall schnell zu diagnostizieren.

---

## Timer & Service

```bash
# Läuft der Timer, wann war der letzte/nächste Check?
systemctl status wellensittich-deploy.timer
systemctl list-timers wellensittich-deploy.timer

# Status des letzten Deploy-Laufs (erfolgreich/fehlgeschlagen?)
systemctl status wellensittich-deploy.service
```

## Logs

```bash
# Live mitverfolgen – am nützlichsten direkt nach einem Push
journalctl -u wellensittich-deploy.service -f

# Letzte 50 Zeilen
journalctl -u wellensittich-deploy.service -n 50 --no-pager

# Nur heutige Läufe
journalctl -u wellensittich-deploy.service --since today

# Nur fehlgeschlagene Läufe finden
journalctl -u wellensittich-deploy.service | grep -i "failed\|error\|denied"
```

Ein Lauf ohne neuen Commit endet still mit „Finished …" – das ist normal.
Ein erfolgreiches Deployment zeigt „Neuer Commit gefunden: … -> …" gefolgt vom
Docker-Build und „Deployment abgeschlossen: <hash>".

## Manuellen Deploy-Lauf auslösen

```bash
# Nicht auf den Timer warten, sofort prüfen/deployen
sudo systemctl start wellensittich-deploy.service
```

## Container-Status

```bash
cd /home/jonet/git/wellensittich

# Laufen alle drei Container? Wie alt ist der jeweilige Container?
docker compose ps
docker ps --format "table {{.Names}}\t{{.Status}}\t{{.CreatedAt}}"

# Logs eines einzelnen Containers
docker compose logs --tail 100 backend
docker compose logs --tail 100 -f backend   # live
```

Achte bei `backend` auf die Zeile `Started SchauverwaltungApplication in X seconds`
als Zeichen für einen erfolgreichen Start.

## Repo-Stand auf dem Server prüfen

```bash
cd /home/jonet/git/wellensittich

git log --oneline -5              # lokal ausgecheckter Stand
git log origin/main --oneline -5  # letzter bekannter Remote-Stand (git fetch vorher!)
git status                        # sollte "clean" sein, keine lokalen Änderungen
```

## Funktionstest der Anwendung

```bash
# Frontend/nginx lokal erreichbar?
curl -I http://localhost:8082

# API + CORS für die öffentliche Domain testen
curl -i -X OPTIONS http://localhost:8082/api/v1/schauen \
  -H "Origin: https://wellensittich.jbayerl.de" \
  -H "Access-Control-Request-Method: POST"

# Erreichbarkeit über den Cloudflare Tunnel
curl -I https://wellensittich.jbayerl.de
```

Erwartung jeweils: `200 OK` bzw. beim CORS-Test zusätzlich der Header
`Access-Control-Allow-Origin: https://wellensittich.jbayerl.de`.

## Datenbank-Backup (empfohlen, regelmäßig)

```bash
docker exec divowin-db pg_dump -U divowin divowin > backup_$(date +%F).sql
```

---

## Typische Fehlerbilder

| Symptom | Wahrscheinliche Ursache | Prüfen mit |
|---|---|---|
| `203/EXEC` im Journal | `deploy.sh` nicht ausführbar oder falscher Pfad | `ls -l deploy/deploy.sh`, `systemctl cat wellensittich-deploy.service` |
| Timer läuft, aber kein Deploy nach Push | Falscher `REPO_DIR` im Skript, oder Commit nicht wirklich auf `origin/main` | `grep REPO_DIR deploy.sh`, `git log origin/main` |
| `502 Bad Gateway` kurz nach Deploy | Backend startet noch (Maven/Spring-Boot-Start dauert ~10–15 s) | `docker compose logs backend`, kurz erneut testen |
| `403 Invalid CORS request` | Alte SecurityConfig im Image, oder Origin fehlt in `SecurityConfig.java` | `docker cp` + `unzip`/`strings` auf die laufende JAR (siehe unten) |
| `525` / `530` beim Domain-Aufruf | Cloudflare-DNS zeigt nicht auf den richtigen Tunnel/Hostname | DNS-Panel + `/etc/cloudflared/config.yml` prüfen |
| Docker meldet Netzwerk-Label-Konflikt | Verwaistes Docker-Netzwerk von einer alten Compose-Version | `docker network rm wellensittich`, dann `docker compose up -d` |

**Prüfen, welcher Code wirklich im laufenden Container steckt** (bei Verdacht auf
veralteten Build):

```bash
docker cp divowin-backend:/app/app.jar /tmp/app.jar
unzip -p /tmp/app.jar "BOOT-INF/classes/de/divowin/schauverwaltung/config/SecurityConfig.class" \
  | strings | grep jbayerl
```