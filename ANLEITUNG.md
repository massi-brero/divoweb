# Wellensittich-App auf dem Homeserver

## Voraussetzungen

Docker mit Compose-Plugin und Git müssen auf dem Server installiert sein:

```bash
curl -fsSL https://get.docker.com | sh
sudo apt install -y git
```

## Schritt 0: Sicherheitsproblem beheben (einmalig, wichtig!)

In `backend/src/main/resources/application-render.properties` liegt das Passwort der Render-Datenbank im Klartext und ist ins Repo committet.

1. Passwort bei Render sofort rotieren (oder die Render-DB löschen, wenn sie nicht mehr gebraucht wird).
2. Die Datei aus dem Repo entfernen oder die Credentials durch Umgebungsvariablen ersetzen, z. B. `spring.datasource.password=${SPRING_DATASOURCE_PASSWORD}`.
3. In `application.properties` den Default `spring.profiles.active=render` auf `dev` ändern.

## Schritt 1: Neue Dateien ins Repo übernehmen

Die Dateien aus diesem Bundle in das Repo kopieren (Struktur bleibt gleich):

```
docker-compose.yml                        -> Repo-Root (neu)
frontend/docker/nginx.conf                -> neu
frontend/src/services/apiClient.js        -> ersetzt die bestehende Datei
```

Die alte `backend/docker-compose.yml` kann gelöscht werden. Dann committen und pushen.

## Schritt 2: Repo auf dem Server klonen

```bash
sudo mkdir -p /opt/wellensittich
cd /opt/wellensittich
git clone https://github.com/jmba/wellensittich.git repo
```

Bei einem privaten Repo: einen Deploy Key anlegen und per SSH klonen.

```bash
ssh-keygen -t ed25519 -f ~/.ssh/wellensittich_deploy -N ""
# Public Key (.pub) bei GitHub unter Repo -> Settings -> Deploy keys eintragen (read-only reicht)
git clone git@github.com:jmba/wellensittich.git repo
```

## Schritt 3: Datenbank-Passwort setzen und erster Start

```bash
cd /opt/wellensittich/repo
echo "DB_PASSWORD=$(openssl rand -hex 16)" > .env
docker compose up -d --build
```

Der erste Build dauert ein paar Minuten (Maven lädt Dependencies). Danach:

- Frontend: `http://<server-ip>/`
- API/Swagger: `http://<server-ip>/api/swagger-ui.html`

Die Datenbank liegt im Docker-Volume `db-daten` und überlebt alle Updates.
Die `.env` steht in der `.gitignore` bzw. wird von `git reset --hard` nicht angefasst, da sie nicht versioniert ist.

## Schritt 4: Auto-Deploy einrichten

```bash
sudo cp deploy/deploy.sh /opt/wellensittich/deploy.sh
sudo chmod +x /opt/wellensittich/deploy.sh
sudo cp deploy/wellensittich-deploy.service /etc/systemd/system/
sudo cp deploy/wellensittich-deploy.timer /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable --now wellensittich-deploy.timer
```

Ab jetzt prüft der Server jede Minute, ob auf `origin/main` ein neuer Commit liegt.
Wenn ja: `git reset --hard` + `docker compose up -d --build`. Kein GitHub-Zugriff auf den Server nötig, keine offenen Ports, keine GitHub Actions.

## Nützliche Befehle

```bash
# Deploy-Log ansehen
journalctl -u wellensittich-deploy.service -f

# Deployment manuell anstoßen
sudo systemctl start wellensittich-deploy.service

# Container-Logs
cd /opt/wellensittich/repo && docker compose logs -f

# Datenbank-Backup
docker exec divowin-db pg_dump -U divowin divowin > backup_$(date +%F).sql
```

## Hinweise

- **Achtung `git reset --hard`:** Lokale Änderungen im Server-Checkout werden bei jedem Deploy verworfen. Änderungen immer über Git pushen, nie direkt auf dem Server editieren.
- **Downtime:** Beim Update startet das Backend kurz neu (wenige Sekunden). Für eine Vereins-/Hobbyanwendung im Heimnetz ist das unkritisch.
- **HTTPS:** Falls die App später aus dem Internet erreichbar sein soll, einen Reverse Proxy mit TLS davorschalten (z. B. Caddy oder Cloudflare Tunnel).
