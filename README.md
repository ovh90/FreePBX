# FreePBX Germany VPS Configuration Backup

## System Information

| Property | Value |
|----------|-------|
| **FreePBX Version** | 17.0.24 |
| **Asterisk Version** | 21.x |
| **Server IP** | 135.125.191.196 |
| **Domain** | slf3.ddns.net |
| **Timezone** | Africa/Cairo |
| **Location** | Germany (OVH VPS) |

## Repository Structure

```
├── README.md                 # This file
├── config/                   # Asterisk configuration files
│   ├── pjsip.*.conf         # PJSIP settings
│   ├── voicemail.conf       # Voicemail configuration
│   └── *.txt                # Summary lists
├── database/                 # MySQL database exports
│   ├── ivr.sql              # IVR configuration
│   ├── ringgroups.sql       # Ring groups
│   ├── timeconditions.sql   # Time conditions
│   ├── routes.sql           # Inbound/outbound routes
│   ├── trunks.sql           # Trunk configuration
│   ├── userman.sql          # User manager
│   ├── vmblast.sql          # VMBlast groups
│   └── ...
├── ssl_certs/               # SSL certificates (KEEP SECURE!)
├── sounds/custom/           # Custom audio recordings
├── scripts/                 # Automation scripts
└── docs/                    # Documentation
    ├── QUICK_RESTORE.md     # Fast restore guide
    ├── CALL_FLOW.md         # IVR call flow diagram
    ├── AUDIT_EGYPT_vs_GERMANY.md  # Parity audit + decisions
    ├── IMPROVEMENTS.md      # Future improvements
    └── GUI_TASKS.md         # Tasks requiring GUI
```

## Quick Start

### For New Server Setup
See [docs/QUICK_RESTORE.md](docs/QUICK_RESTORE.md)

### For Configuration Updates
See [docs/GUI_TASKS.md](docs/GUI_TASKS.md)

## Current Configuration Summary

### Extensions (PJSIP)
- Full current inventory is exported to `config/extensions_list.txt` (source of truth).
- Duplicates from Egypt (1011–1014, 2011/20112, 2021/20212, 2071/2072, etc.) are intentionally consolidated on Germany.

### Trunks
| Trunk | Type | Purpose |
|-------|------|---------|
| Yeastar-02 | PJSIP | FXO (landlines) gateway in Egypt |
| YeastarGSM | PJSIP | GSM gateway in Egypt |
| YeastarGSMCanada | PJSIP | GSM gateway in Canada |

### IVR Structure
| ID | Name | Purpose |
|----|------|---------|
| 1 | Recording-Consent | GDPR consent for call recording |
| 2 | Main-Menu-Mobile | Menu for mobile callers |
| 3 | Main-Menu-PSTN | Menu for PSTN callers |
| 4 | File-Team-Entry | Enter file team extension |

**DID-based menu split (Egypt behavior):**
- After Recording-Consent, Germany routes:
  - DID **333/888** → `Main-Menu-PSTN`
  - All other DIDs → `Main-Menu-Mobile`
  - Implemented in `config/extensions_custom.conf` (`custom-menu-split`)

### Time Conditions
| ID | Name | Hours | Action |
|----|------|-------|--------|
| 1 | Holiday-Mode | Manual (*28) | Holiday announcement → VM 502 |
| 2 | Sales-WorkTime | 08:10-22:59 daily | IVR or → VM 502 |
| 3 | FileTeam-WorkTime | 08:00-16:59 Sun-Thu | File IVR or → VM 504 |

### Ring Groups
| Number | Name | Extensions |
|--------|------|------------|
| 2000 | Sales | See `config/ringgroups_list.txt` (source of truth) |
| 2001 | Sales Retry | Same members as 2000 |

### VMBlast Groups
| Dial | Name | Voicemail |
|------|------|-----------|
| 511 | InWorkTime | 501 |
| 512 | OutWorkTime | 502 |
| 513 | YoussefShakwa | 503 |

## Important Notes

1. **All extensions use PJSIP** (not chan_sip)
2. **TLS enabled** on port 8899 with custom certificates
3. **Max Contacts = 5** for mobile users (multiple device registration)
4. **Firewall** configured with Responsive Firewall enabled

## Backup Date
Last updated: January 12, 2026
