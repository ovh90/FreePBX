#!/bin/bash
# FreePBX Backup Script
# Run daily via cron: 0 2 * * * /root/freepbx_backup/scripts/backup.sh

set -e

BACKUP_DIR="/root/freepbx_backup_repo"
DATE=$(date +%Y%m%d_%H%M%S)
LOG_FILE="/var/log/freepbx_backup.log"

log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" | tee -a "$LOG_FILE"
}

log "Starting FreePBX backup..."

cd "$BACKUP_DIR"

# Export database tables
log "Exporting database..."
mysqldump -u root asterisk ivr_details ivr_entries > database/ivr.sql 2>/dev/null
mysqldump -u root asterisk ringgroups > database/ringgroups.sql 2>/dev/null
mysqldump -u root asterisk timeconditions timegroups_groups timegroups_details > database/timeconditions.sql 2>/dev/null
mysqldump -u root asterisk announcement > database/announcements.sql 2>/dev/null
mysqldump -u root asterisk recordings > database/recordings.sql 2>/dev/null
mysqldump -u root asterisk trunks pjsip > database/trunks.sql 2>/dev/null
mysqldump -u root asterisk incoming outbound_routes outbound_route_patterns outbound_route_trunks > database/routes.sql 2>/dev/null
mysqldump -u root asterisk vmblast vmblast_groups > database/vmblast.sql 2>/dev/null
mysqldump -u root asterisk userman_users userman_groups userman_users_settings > database/userman.sql 2>/dev/null

# Copy config files
log "Copying config files..."
cp /etc/asterisk/pjsip.endpoint.conf config/ 2>/dev/null || true
cp /etc/asterisk/pjsip.aor.conf config/ 2>/dev/null || true
cp /etc/asterisk/pjsip.auth.conf config/ 2>/dev/null || true
cp /etc/asterisk/pjsip.registration.conf config/ 2>/dev/null || true
cp /etc/asterisk/pjsip.transports.conf config/ 2>/dev/null || true
cp /etc/asterisk/voicemail.conf config/ 2>/dev/null || true

# Copy sound files (only if changed)
log "Syncing sound files..."
rsync -a /var/lib/asterisk/sounds/custom/ sounds/custom/ 2>/dev/null || true

# Copy SSL certificates
log "Copying SSL certificates..."
cp /etc/asterisk/keys/*.pem ssl_certs/ 2>/dev/null || true
cp /etc/asterisk/keys/*.crt ssl_certs/ 2>/dev/null || true
cp /etc/asterisk/keys/*.key ssl_certs/ 2>/dev/null || true

# Update timestamp in README
sed -i "s/Last updated:.*/Last updated: $(date '+%B %d, %Y')/" README.md

# Git operations
log "Committing to Git..."
git add -A
git commit -m "Automated backup: $DATE" || log "No changes to commit"

# Push to GitHub (uncomment when SSH is configured)
# git push origin main

log "Backup completed successfully!"
