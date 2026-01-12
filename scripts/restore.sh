#!/bin/bash
# FreePBX Restore Script
# Usage: ./restore.sh [--full|--database|--sounds|--config]

set -e

BACKUP_DIR="/root/freepbx_backup_repo"
LOG_FILE="/var/log/freepbx_restore.log"

log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" | tee -a "$LOG_FILE"
}

restore_database() {
    log "Restoring database tables..."
    
    # Import in correct order (dependencies first)
    mysql -u root asterisk < "$BACKUP_DIR/database/recordings.sql" 2>/dev/null && log "  - recordings restored"
    mysql -u root asterisk < "$BACKUP_DIR/database/announcements.sql" 2>/dev/null && log "  - announcements restored"
    mysql -u root asterisk < "$BACKUP_DIR/database/timeconditions.sql" 2>/dev/null && log "  - timeconditions restored"
    mysql -u root asterisk < "$BACKUP_DIR/database/ivr.sql" 2>/dev/null && log "  - IVR restored"
    mysql -u root asterisk < "$BACKUP_DIR/database/ringgroups.sql" 2>/dev/null && log "  - ringgroups restored"
    mysql -u root asterisk < "$BACKUP_DIR/database/vmblast.sql" 2>/dev/null && log "  - vmblast restored"
    mysql -u root asterisk < "$BACKUP_DIR/database/routes.sql" 2>/dev/null && log "  - routes restored"
    mysql -u root asterisk < "$BACKUP_DIR/database/trunks.sql" 2>/dev/null && log "  - trunks restored"
    mysql -u root asterisk < "$BACKUP_DIR/database/userman.sql" 2>/dev/null && log "  - userman restored"

    # Optional module data (Egypt parity)
    mysql -u root asterisk < "$BACKUP_DIR/database/contactmanager.sql" 2>/dev/null && log "  - contactmanager restored"
    mysql -u root asterisk < "$BACKUP_DIR/database/fax.sql" 2>/dev/null && log "  - fax restored"
    mysql -u root asterisk < "$BACKUP_DIR/database/superfecta.sql" 2>/dev/null && log "  - superfecta restored"
    mysql -u root asterisk < "$BACKUP_DIR/database/dahdiconfig.sql" 2>/dev/null && log "  - dahdiconfig restored"
    
    log "Database restore complete"
}

restore_sounds() {
    log "Restoring sound files..."
    
    mkdir -p /var/lib/asterisk/sounds/custom
    cp "$BACKUP_DIR/sounds/custom/"* /var/lib/asterisk/sounds/custom/ 2>/dev/null || true
    chown -R asterisk:asterisk /var/lib/asterisk/sounds/custom
    
    log "Sound files restored"
}

restore_config() {
    log "Restoring config files..."
    
    # Note: These are generated files, may need fwconsole reload after
    cp "$BACKUP_DIR/config/voicemail.conf" /etc/asterisk/ 2>/dev/null || true
    chown asterisk:asterisk /etc/asterisk/voicemail.conf 2>/dev/null || true

    # Custom dialplan additions (DID-based routing, etc.)
    cp "$BACKUP_DIR/config/extensions_custom.conf" /etc/asterisk/extensions_custom.conf 2>/dev/null || true
    chown asterisk:asterisk /etc/asterisk/extensions_custom.conf 2>/dev/null || true
    
    log "Config files restored"
}

restore_certs() {
    log "Restoring SSL certificates..."
    
    mkdir -p /etc/asterisk/keys
    cp "$BACKUP_DIR/ssl_certs/"*.pem /etc/asterisk/keys/ 2>/dev/null || true
    cp "$BACKUP_DIR/ssl_certs/"*.crt /etc/asterisk/keys/ 2>/dev/null || true
    cp "$BACKUP_DIR/ssl_certs/"*.key /etc/asterisk/keys/ 2>/dev/null || true
    chown -R asterisk:asterisk /etc/asterisk/keys
    chmod 640 /etc/asterisk/keys/*
    
    log "SSL certificates restored"
}

reload_freepbx() {
    log "Reloading FreePBX..."
    fwconsole reload
    log "FreePBX reloaded"
}

show_help() {
    echo "FreePBX Restore Script"
    echo ""
    echo "Usage: $0 [option]"
    echo ""
    echo "Options:"
    echo "  --full      Restore everything (database, sounds, config, certs)"
    echo "  --database  Restore database tables only"
    echo "  --sounds    Restore sound files only"
    echo "  --config    Restore config files only"
    echo "  --certs     Restore SSL certificates only"
    echo "  --help      Show this help"
    echo ""
    echo "After restore, you may need to:"
    echo "  1. Create extensions via GUI or bulkimport"
    echo "  2. Configure PJSIP settings via GUI"
    echo "  3. Configure trunks via GUI"
    echo ""
}

# Main
case "$1" in
    --full)
        log "Starting full restore..."
        restore_certs
        restore_sounds
        restore_database
        restore_config
        reload_freepbx
        log "Full restore complete!"
        echo ""
        echo "IMPORTANT: You still need to:"
        echo "  1. Create extensions via GUI"
        echo "  2. Configure PJSIP TLS settings via GUI"
        echo "  3. Configure trunks via GUI"
        echo "  4. Configure firewall via GUI"
        ;;
    --database)
        restore_database
        reload_freepbx
        ;;
    --sounds)
        restore_sounds
        ;;
    --config)
        restore_config
        reload_freepbx
        ;;
    --certs)
        restore_certs
        ;;
    --help|*)
        show_help
        ;;
esac
