# Call Flow Diagram

## Inbound Call Flow

```
                              INBOUND CALL
                                   │
                                   ▼
                    ┌──────────────────────────────┐
                    │     Holiday-Mode (TC 1)      │
                    │       Toggle: *28            │
                    │       Code: 28               │
                    └──────────────────────────────┘
                           │              │
                    Holiday ON      Holiday OFF
                           │              │
                           ▼              ▼
              ┌─────────────────┐  ┌──────────────────────────────┐
              │ Holiday         │  │    Sales-WorkTime (TC 2)     │
              │ Announcement    │  │    08:10-22:59 Daily         │
              │ (Recording 5)   │  └──────────────────────────────┘
              └─────────────────┘         │              │
                       │           IN Hours       OUT Hours
                       ▼                 │              │
              ┌─────────────────┐        ▼              ▼
              │  Voicemail 502  │  ┌───────────┐  ┌─────────────────┐
              │  (Sales Out)    │  │Recording  │  │  Voicemail 502  │
              └─────────────────┘  │Consent IVR│  │  (Sales Out)    │
                                   │  (IVR 1)  │  └─────────────────┘
                                   └───────────┘
                                    │         │
                              Press 1    Press 2
                              (Accept)   (Decline)
                                   │         │
                                   ▼         ▼
                    ┌──────────────────┐  ┌────────┐
                    │ DID Split Router │  │ Hangup │
                    │ custom-menu-split│  └────────┘
                    └──────────────────┘
                           │
               ┌───────────┴───────────┐
               │                       │
           DID 333/888             Other DIDs
               │                       │
               ▼                       ▼
      ┌──────────────────┐     ┌──────────────────┐
      │ Main-Menu-PSTN    │     │ Main-Menu-Mobile  │
      │ (IVR 3)           │     │ (IVR 2)           │
      └──────────────────┘     └──────────────────┘
               │                       │
               └───────────┬───────────┘
                           │
           ┌───────────────┼───────────────┐
           │               │               │
        Press 1         Press 2         Press 3
        (Sales)        (FileTeam)     (Complaints)
           │               │               │
           ▼               ▼               ▼
    ┌─────────────┐ ┌──────────────────┐ ┌─────────────────┐
    │ Ring Group  │ │ FileTeam-WorkTime│ │  Voicemail 505  │
    │    2000     │ │     (TC 3)       │ │  (Complaints)   │
    └─────────────┘ │ 08:00-16:59      │ └─────────────────┘
           │        │ Sun-Thu          │
           │        └──────────────────┘
           │              │         │
           │        IN Hours    OUT Hours
           │              │         │
           │              ▼         ▼
           │     ┌─────────────┐ ┌─────────────────┐
           │     │File-Team    │ │Files-OutWorkTime│
           │     │Entry (IVR 4)│ │  Announcement   │
           │     └─────────────┘ └─────────────────┘
           │              │              │
           │              │              ▼
           │              │      ┌─────────────────┐
           │              │      │  Voicemail 504  │
           │              │      │  (Files)        │
           │              │      └─────────────────┘
           │              │
           │              ▼
           │     ┌─────────────────┐
           │     │ Dial Extension  │
           │     │ (3xx or 4xxx)   │
           │     └─────────────────┘
           │
           ▼
    ┌─────────────────────────────────────────────┐
    │              Ring Group 2000                │
    │  200,201,202,203,204,205,206,207,208        │
    │  Ring Time: 60 seconds                      │
    └─────────────────────────────────────────────┘
                       │
              No Answer (60s)
                       │
                       ▼
              ┌─────────────────────────┐
              │ Sales-BusyRetry         │
              │ Announcement            │
              └─────────────────────────┘
                       │
                       ▼
    ┌─────────────────────────────────────────────┐
    │              Ring Group 2001                │
    │        (Sales Retry - same members)         │
    │  Ring Time: 60 seconds                      │
    └─────────────────────────────────────────────┘
                       │
              No Answer (60s)
                       │
                       ▼
              ┌─────────────────────────┐
              │ Voicemail-InWorkTime    │
              │ Announcement            │
              └─────────────────────────┘
                       │
                       ▼
              ┌─────────────────┐
              │  Voicemail 501  │
              │  (Sales In)     │
              └─────────────────┘
```

## IVR Menu Options

### IVR 1: Recording-Consent
| Option | Action |
|--------|--------|
| 1 | Accept recording → DID Split Router (`custom-menu-split`) → IVR 3 for DIDs 333/888, otherwise IVR 2 |
| 2 | Decline recording → Hangup |
| Invalid/Timeout | Ring Group 2000 |

### IVR 2: Main-Menu-Mobile
| Option | Action |
|--------|--------|
| 1 | Sales → Ring Group 2000 |
| 2 | FileTeam → FileTeam-WorkTime (TC 3) |
| 3 | Complaints → Voicemail 505 |
| Invalid/Timeout | Ring Group 2000 |

### IVR 3: Main-Menu-PSTN
| Option | Action |
|--------|--------|
| 1 | Sales → Ring Group 2000 |
| 2 | FileTeam → FileTeam-WorkTime (TC 3) |
| 3 | Complaints → Voicemail 505 |
| Invalid/Timeout | Ring Group 2000 |

### IVR 4: File-Team-Entry
| Option | Action |
|--------|--------|
| Enter 3xx | Dial extension 3xx |
| Enter 4xxx | Dial extension 4xxx (maps to xxx) |
| Invalid/Timeout | Ring Group 2000 |

## Time Conditions Summary

| ID | Name | Hours | True Destination | False Destination |
|----|------|-------|------------------|-------------------|
| 1 | Holiday-Mode | Manual toggle *28 | Holiday Announcement → VM 502 | Sales-WorkTime (TC 2) |
| 2 | Sales-WorkTime | 08:10-22:59 Sun-Sat | Recording-Consent IVR | Voicemail 502 |
| 3 | FileTeam-WorkTime | 08:00-16:59 Sun-Thu | File-Team-Entry IVR | Files-OutWorkTime → VM 504 |

## Voicemail Boxes

| Extension | Name | Purpose |
|-----------|------|---------|
| 501 | InWorkTime | Sales during work hours |
| 502 | OutWorkTime | Sales outside hours / Holiday |
| 503 | YoussefShakwa | Youssef personal |
| 504 | Files | File team messages |
| 505 | Complaints | Customer complaints |

## Trunk Routing

### Inbound
- All inbound calls → Holiday-Mode (TC 1)
- After Recording-Consent, calls are split by DID:
  - DID **333/888** → `Main-Menu-PSTN`
  - All other DIDs → `Main-Menu-Mobile`

### Outbound
- Dial 0 + number → YeastarGSMEgypt (Egypt gateway)
- Dial 00 + number → YeastarGSMCanada (Canada gateway)
