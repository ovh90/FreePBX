# Quick Restore Guide

## Prerequisites

- Fresh FreePBX 17 installation
- Root SSH access
- This repository cloned to `/root/freepbx_backup`

## Phase 1: System Preparation (AI-Assisted)

### 1.1 Clone Repository
```bash
cd /root
git clone git@github.com:ovh90/FreePBX.git freepbx_backup
cd freepbx_backup
```

### 1.2 Verify System
```bash
# Check FreePBX version
fwconsole -V

# Check Asterisk version
asterisk -V

# Verify PJSIP is enabled
fwconsole setting ASTSIPDRIVER
# Should return: chan_pjsip
```

### 1.3 Set Extensions Mode
```bash
fwconsole setting AMPEXTENSIONS extensions
```

## Phase 2: SSL Certificates (AI-Assisted)

### 2.1 Copy Certificates
```bash
cp ssl_certs/*.pem /etc/asterisk/keys/
cp ssl_certs/*.crt /etc/asterisk/keys/
cp ssl_certs/*.key /etc/asterisk/keys/
chown asterisk:asterisk /etc/asterisk/keys/*
chmod 640 /etc/asterisk/keys/*
```

### 2.2 Configure Certificate in GUI (Manual)
1. Go to **Admin → Certificate Management**
2. Import certificate: `slf3.pem`
3. Set as default for Asterisk

## Phase 3: Database Import (AI-Assisted)

### 3.1 Import Core Tables
```bash
# Import in order
mysql -u root asterisk < database/recordings.sql
mysql -u root asterisk < database/announcements.sql
mysql -u root asterisk < database/timeconditions.sql
mysql -u root asterisk < database/ivr.sql
mysql -u root asterisk < database/ringgroups.sql
mysql -u root asterisk < database/vmblast.sql
mysql -u root asterisk < database/routes.sql
mysql -u root asterisk < database/trunks.sql
mysql -u root asterisk < database/userman.sql
mysql -u root asterisk < database/contactmanager.sql
mysql -u root asterisk < database/fax.sql
mysql -u root asterisk < database/superfecta.sql
```

### 3.2 Copy Sound Files
```bash
cp sounds/custom/* /var/lib/asterisk/sounds/custom/
chown asterisk:asterisk /var/lib/asterisk/sounds/custom/*
```

### 3.3 Reload FreePBX
```bash
fwconsole reload
```

## Phase 4: Extensions (GUI Required)

Extensions must be created via GUI or bulk import due to password hashing.

### Option A: Bulk Import
Create CSV file with format:
```csv
extension,name,secret,max_contacts,voicemail
101,MR. Youssef,Salamacall101,5,yes
...
```

Then run:
```bash
fwconsole bulkimport --type=extensions --file=extensions.csv --replace
```

### Option B: Manual GUI Creation
See [GUI_TASKS.md](GUI_TASKS.md) for extension details.

## Phase 5: PJSIP Settings (GUI Required)

### 5.1 Configure TLS Transport
1. Go to **Settings → Asterisk SIP Settings → PJSIP Settings**
2. Under `0.0.0.0 (tls)`:
   - Port: `8899`
   - Domain: `slf3.ddns.net`
   - Certificate: Select imported certificate

### 5.2 Configure NAT
1. Go to **Settings → Asterisk SIP Settings → General SIP Settings**
2. Set External IP: `135.125.191.196`
3. Local Networks: Add your local subnets

## Phase 6: Trunk Configuration (GUI Required)

### Yeastar-02 (Egypt FXO / landlines)
1. Go to **Connectivity → Trunks → Add Trunk → PJSIP**
2. Settings:
   - Trunk Name: `Yeastar-02`
   - SIP Server: `41.129.148.49`
   - SIP Server Port: `5060`
   - Username: `from-pstn`
   - Authentication: `Outbound`
   - Registration: `None`
3. Under **pjsip Settings → Match (Permit)**:
   - Add: `41.129.148.49`

### YeastarGSM (Egypt GSM)
Same as above with:
- Trunk Name: `YeastarGSM`
- SIP Server Port: `5061`

### YeastarGSMCanada
1. Go to **Connectivity → Trunks → Add Trunk → PJSIP**
2. Settings:
   - Trunk Name: `YeastarGSMCanada`
   - SIP Server: `gsmcanda.hopto.org`
   - SIP Server Port: `8899`
3. Under **pjsip Settings → Match (Permit)**:
   - Add: `gsmcanda.hopto.org`

## Phase 7: Firewall (GUI Required)

1. Go to **Connectivity → Firewall**
2. Enable Responsive Firewall
3. Add trusted networks
4. Configure Fail2ban settings

## Phase 8: Final Verification

```bash
# Check extensions registered
asterisk -rx "pjsip show endpoints"

# Check trunks
asterisk -rx "pjsip show registrations"

# Test IVR
asterisk -rx "dialplan show ivr-1"

# Reload everything
fwconsole reload
systemctl restart asterisk
```

## Estimated Time

| Phase | Method | Time |
|-------|--------|------|
| 1-3 | AI/Script | 10 min |
| 4 | GUI | 20 min |
| 5-6 | GUI | 15 min |
| 7 | GUI | 10 min |
| 8 | AI/Script | 5 min |
| **Total** | | **~1 hour** |

## Troubleshooting

### Extensions not registering
```bash
# Check PJSIP status
asterisk -rx "pjsip show endpoints"

# Check logs
tail -f /var/log/asterisk/full
```

### TLS not working
```bash
# Verify certificate
openssl x509 -in /etc/asterisk/keys/slf3.pem -text -noout

# Check transport
asterisk -rx "pjsip show transports"
```

### IVR not playing audio
```bash
# Check sound files exist
ls -la /var/lib/asterisk/sounds/custom/

# Test playback
asterisk -rx "channel originate Local/s@test extension s@from-internal"
```
