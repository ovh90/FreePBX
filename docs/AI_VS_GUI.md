# AI vs GUI Task Reference

This document clarifies which tasks can be automated with AI assistance and which require manual GUI interaction.

## Tasks AI Can Handle (Fast)

### Database Operations
| Task | Command | Time |
|------|---------|------|
| Export all tables | `mysqldump` | 1 min |
| Import tables | `mysql < file.sql` | 1 min |
| Query configurations | `mysql -e "SELECT..."` | Instant |
| Update settings | `mysql -e "UPDATE..."` | Instant |
| Create time conditions | SQL INSERT | Instant |
| Create announcements | SQL INSERT | Instant |
| Create VMBlast groups | SQL INSERT | Instant |

### File Operations
| Task | Command | Time |
|------|---------|------|
| Copy config files | `cp` | Instant |
| Copy sound files | `cp` | 1 min |
| Set permissions | `chown/chmod` | Instant |
| Import certificates | `cp` to `/etc/asterisk/keys/` | Instant |

### System Commands
| Task | Command | Time |
|------|---------|------|
| Reload FreePBX | `fwconsole reload` | 30 sec |
| Restart Asterisk | `systemctl restart asterisk` | 10 sec |
| Check status | `asterisk -rx "..."` | Instant |
| Bulk import extensions | `fwconsole bulkimport` | 2 min |
| Sync users | `fwconsole userman syncall` | 30 sec |

### Verification
| Task | Command | Time |
|------|---------|------|
| List endpoints | `asterisk -rx "pjsip show endpoints"` | Instant |
| Check registrations | `asterisk -rx "pjsip show registrations"` | Instant |
| Verify dialplan | `asterisk -rx "dialplan show..."` | Instant |
| Check logs | `tail /var/log/asterisk/full` | Instant |

## Tasks Requiring GUI (Slower)

### Extension Creation
**Why GUI?** Password hashing and complex validation
**Time**: ~2 min per extension
**Alternative**: `fwconsole bulkimport` (partial automation)

### PJSIP Transport Settings
**Why GUI?** Complex form with certificate selection
**Time**: 5 min
**Location**: Settings → Asterisk SIP Settings → PJSIP Settings

### Trunk Configuration
**Why GUI?** Multiple tabs, Match/Identify settings
**Time**: 5 min per trunk
**Location**: Connectivity → Trunks

### Certificate Management
**Why GUI?** File upload and certificate chain validation
**Time**: 5 min
**Location**: Admin → Certificate Management

### Firewall Configuration
**Why GUI?** Interface selection, responsive firewall settings
**Time**: 10 min
**Location**: Connectivity → Firewall

### Voicemail Email Settings
**Why GUI?** Per-extension email configuration
**Time**: 1 min per extension
**Location**: Applications → Extensions → Voicemail tab

## Hybrid Approach (Recommended)

### For New Server Setup

```
Phase 1: AI (10 min)
├── Clone repository
├── Import database tables
├── Copy sound files
├── Copy certificates
└── Initial reload

Phase 2: GUI (30 min)
├── Configure PJSIP transports
├── Import/create extensions
├── Configure trunks
├── Set up firewall
└── Configure certificates

Phase 3: AI (5 min)
├── Verify all configurations
├── Test endpoints
├── Check logs
└── Final reload
```

### For Configuration Changes

| Change Type | Method | Time |
|-------------|--------|------|
| Add extension | GUI | 2 min |
| Change IVR routing | AI (SQL) | 1 min |
| Add time condition | AI (SQL) | 1 min |
| Update announcement | AI (SQL) | 1 min |
| Add trunk | GUI | 5 min |
| Change firewall rules | GUI | 5 min |
| Update voicemail email | GUI | 1 min |

### For Troubleshooting

| Issue | Method | Commands |
|-------|--------|----------|
| Extension not registering | AI | `asterisk -rx "pjsip show endpoint X"` |
| Calls not routing | AI | `asterisk -rx "dialplan show..."` |
| Trunk down | AI | `asterisk -rx "pjsip show registrations"` |
| Audio issues | AI | Check codec settings, logs |
| GUI errors | GUI | Check browser console, Apache logs |

## AI Prompt Templates

### For Database Queries
```
"Show me all extensions and their voicemail status"
→ mysql -e "SELECT id, description FROM users; SELECT mailbox, email FROM voicemail;"

"What are the current IVR destinations?"
→ mysql -e "SELECT ivr_id, selection, dest FROM ivr_entries;"
```

### For Configuration Changes
```
"Change Ring Group 2000 no-answer destination to Voicemail 503"
→ mysql -e "UPDATE ringgroups SET postdest='ext-local,vms503,1' WHERE grpnum='2000';"
→ fwconsole reload

"Add extension 401 to Ring Group 2000"
→ mysql -e "UPDATE ringgroups SET grplist=CONCAT(grplist,'-401') WHERE grpnum='2000';"
→ fwconsole reload
```

### For Verification
```
"Verify all extensions are registered"
→ asterisk -rx "pjsip show endpoints" | grep -E "^[0-9]"

"Check if trunks are connected"
→ asterisk -rx "pjsip show registrations"
```

## Time Savings Summary

| Scenario | GUI Only | AI + GUI | Savings |
|----------|----------|----------|---------|
| New server setup | 3 hours | 1 hour | 66% |
| Add 10 extensions | 30 min | 15 min | 50% |
| Change IVR flow | 15 min | 2 min | 87% |
| Troubleshoot issue | 30 min | 10 min | 67% |
| Full backup | 1 hour | 5 min | 92% |

## Best Practices

1. **Always use AI for**:
   - Database queries and exports
   - Bulk operations
   - Verification and testing
   - Log analysis

2. **Always use GUI for**:
   - Initial extension creation
   - Certificate management
   - Firewall configuration
   - Complex trunk settings

3. **Document everything**:
   - Keep this repository updated
   - Note any manual changes
   - Update version history

4. **Test after changes**:
   - Use AI to verify configurations
   - Make test calls
   - Check logs for errors
