#!/bin/bash
# Auto-Deploy für die Wellensittich-App.
# Prüft, ob es auf origin/main neue Commits gibt, und baut die Container bei Bedarf neu.
# Wird per systemd-Timer jede Minute als Benutzer "jonet" aufgerufen.

set -euo pipefail

# Separater Deploy-Checkout (empfohlen). Einmalig anlegen mit:
#   sudo mkdir -p /opt/wellensittich && sudo chown jonet:jonet /opt/wellensittich
#   git clone git@github.com:jmba/wellensittich.git /opt/wellensittich/repo
#   (.env mit DB_PASSWORD in /opt/wellensittich/repo anlegen!)
# Alternativ den bestehenden Checkout verwenden:
#   REPO_DIR="/home/jonet/git/wellensittich"
REPO_DIR="/home/jonet/git/wellensittich"
BRANCH="main"
LOCKFILE="/tmp/wellensittich-deploy.lock"

# Verhindern, dass zwei Deployments parallel laufen (Build kann > 1 Minute dauern)
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
# Achtung: verwirft lokale Änderungen im Deploy-Checkout!
git reset --hard "origin/$BRANCH"

docker compose up -d --build

echo "$(date '+%F %T') Deployment abgeschlossen: $(git rev-parse --short HEAD)"