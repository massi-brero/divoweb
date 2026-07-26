#!/bin/bash
# Auto-Deploy für die Wellensittich-App.
# Prüft, ob es auf origin/main neue Commits gibt.
# Bei neuem Commit: Datenbank-Volume löschen und komplett neu aufbauen
# (Liquibase spielt Schema + Daten beim Start neu ein).

set -euo pipefail

REPO_DIR="/home/jonet/git/wellensittich"
BRANCH="main"
LOCKFILE="/tmp/wellensittich-deploy.lock"

exec 9>"$LOCKFILE"
flock -n 9 || { echo "Deployment läuft bereits, überspringe."; exit 0; }

cd "$REPO_DIR"

git fetch origin "$BRANCH" --quiet

LOCAL=$(git rev-parse HEAD)
REMOTE=$(git rev-parse "origin/$BRANCH")

if [ "$LOCAL" = "$REMOTE" ]; then
  exit 0
fi

echo "$(date '+%F %T') Neuer Commit gefunden: $LOCAL -> $REMOTE"
git reset --hard "origin/$BRANCH"

# Kompletten Stack stoppen UND die Volumes (Datenbank) löschen.
echo "$(date '+%F %T') Setze Datenbank zurück (docker compose down -v)..."
docker compose down -v --remove-orphans

# Neu bauen und mit leerer Datenbank starten – Liquibase spielt beim
# Boot alle Changesets (Schema + Seed-Daten) von vorne ein.
docker compose up -d --build

echo "$(date '+%F %T') Deployment abgeschlossen: $(git rev-parse --short HEAD)"