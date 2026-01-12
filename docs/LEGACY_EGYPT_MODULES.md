# Legacy Egypt Modules (FreePBX 14) — Preservation + FreePBX 17 Notes

This repo includes **archived Egypt-only module configuration** so nothing is lost from the old system.

Important: some Egypt-era modules are **not installable/supported** on FreePBX 17 via the standard module repos (we observed “Retrieved Module XML Was Empty” when trying to install them on Germany).

## Archived Egypt module dumps (for reference)

These files are **from the Egypt system snapshot DB** and are kept for audit/forensics and potential future use:

- `database/egypt_legacy_cxpanel.sql`
- `database/egypt_legacy_digium_phones.sql`
- `database/egypt_legacy_zulu_xmpp.sql`
- `database/egypt_legacy_restapi.sql` (**contains API tokens/keys**, keep repo private)

## What we did on Germany (FreePBX 17)

- **`dahdiconfig`**: installed and migrated DAHDI settings (exported in `database/dahdiconfig.sql`).

## Replacement guidance on FreePBX 17 (Germany)

- **CXPanel (`cxpanel`)**: Egypt had 44 CXPanel users configured, but this module is not currently available from the standard FreePBX 17 repos on Germany.  
  - If you need an operator/receptionist console on FreePBX 17, we can implement an alternative (depends on licensing/requirements).

- **Digium Phones (`digium_phones`)**: legacy Digium phone provisioning tables exist in Egypt; module not available via standard repos on Germany.  
  - FreePBX 17 environments typically use **Endpoint Manager** (`endpoint`) instead.

- **Zulu/XMPP (`zulu`, `xmpp`)**: Egypt had Zulu/XMPP settings, but Zulu is not available via standard repos on Germany.  
  - FreePBX 17 typically uses **Sangoma Connect** (`sangomaconnect`) instead.

- **REST API (`restapi`)**: deprecated in FreePBX 16+ and not available on Germany.  
  - FreePBX 17 uses the **API** module (`api`) instead.

