# Egypt vs Germany Configuration Audit (FreePBX 14 → 17)

This document compares the **Egypt** production system (FreePBX 14 / Asterisk 13) to the **Germany** VPS (FreePBX 17 / Asterisk 21) and records what was **migrated**, what was **missing**, and what we **intentionally skipped**.

## High-impact items (call flow)

- **Inbound DID split (Egypt behavior)**:
  - Egypt routed landline DIDs **333/888** to the **PSTN menu** and all other DIDs to the **mobile/GSM menu**.
  - Germany now matches this using a DID-based router after the Recording-Consent step:
    - If inbound DID is **333/888** → `Main-Menu-PSTN`
    - Else → `Main-Menu-Mobile`
  - Implemented via custom dialplan in `config/extensions_custom.conf` (context `custom-menu-split`).

- **Sales missed-call voicemail (in-hours)**:
  - Egypt used a retry flow that ultimately sends in-hours missed calls to **VM 501 (InWorkTime)**.
  - Germany now matches this:
    - Ring Group **2000** no-answer → Announcement **Sales-BusyRetry** → Ring Group **2001** → Announcement **Voicemail-InWorkTime** → **VM 501**

## Items present in Egypt but not yet migrated to Germany (optional / review)

These existed in Egypt and had real data, but are not required for the current Germany call flow unless you decide to use them.

- **Directory module data (intentionally NOT migrated)**
  - Egypt had `directory_details` and `directory_entries` populated (dial-by-extension directory).
  - Germany currently has `directory` module installed but we **intentionally keep Directory empty** because callers can dial internal extensions directly (Directory not needed).
  - If you ever want it back, re-import Egypt `directory_details` + `directory_entries`.

- **Contact Manager data**
  - Egypt had Contact Manager groups and entries populated.
  - Germany now includes the Egypt Contact Manager data (migrated).

- **Fax users/config**
  - Egypt had `fax_users` populated.
  - Germany now includes the Egypt fax users/config (migrated).

- **Superfecta inbound mappings**
  - Egypt had `superfecta_to_incoming` populated.
  - Germany now includes the Egypt `superfecta_to_incoming` mappings (migrated).

## Items intentionally not migrated (obsolete / not applicable)

- **chan_sip trunks / legacy SIP devices**
  - Egypt included multiple legacy SIP trunks (Phone_333/Phone_888/etc) that rely on chan_sip.
  - Germany is **PJSIP-only** (Asterisk 21), so these are intentionally not migrated.

- **Old holiday (date-based) time conditions**
  - Egypt used dated time conditions (ex: “Holiday Jan 8 2026 …”).
  - Germany uses a **manual Holiday-Mode toggle** (override code `*28`) and separate WorkTime checks.

## Known differences to keep in mind

- **Extension inventory differs** from early migration notes:
  - Germany contains extensions beyond what early docs listed (ex: 200/203/205/209/5050/600–610).
  - The GitHub repo now exports the full current `users`/`devices` lists in `database/users_devices.sql` and the readable `config/extensions_list.txt`.

## Where to look in this repo

- **Call flow**: `docs/CALL_FLOW.md`
- **Restore guide**: `docs/QUICK_RESTORE.md`
- **GUI-required tasks**: `docs/GUI_TASKS.md`
- **Automation scripts**: `scripts/backup.sh`, `scripts/restore.sh`
- **Custom dialplan**: `config/extensions_custom.conf`

