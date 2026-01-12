# GUI Tasks Reference

This document lists all configuration tasks that **must be done via the FreePBX GUI** and cannot be reliably automated.

## Extensions

### Extension List with Passwords

| Extension | Name | Password | Max Contacts | Voicemail |
|-----------|------|----------|--------------|-----------|
| 101 | MR. Youssef | Salamacall101 | 5 | No |
| 201 | Ahmed | Salamacall201 | 5 | Yes |
| 202 | Mahmoud | Salamacall202 | 5 | Yes |
| 203 | Youssef | Salamacall203 | 5 | Yes |
| 204 | Hossam | Salamacall204 | 5 | Yes |
| 205 | Amr | Salamacall205 | 5 | Yes |
| 206 | Yasser | Salamacall206 | 5 | Yes |
| 207 | Ayman | Salamacall207 | 5 | Yes |
| 208 | Mostafa | Salamacall208 | 5 | Yes |
| 301 | Mona | Salamacall301 | 5 | Yes |
| 302 | Heba | Salamacall302 | 5 | Yes |
| 303 | Eman | Salamacall303 | 5 | Yes |
| 403 | Fax | Salamacall403 | 1 | No |
| 501 | VM InWorkTime | - | 1 | Yes |
| 504 | VM Files | - | 1 | Yes |
| 505 | VM Complaints | - | 1 | Yes |

### Creating Extensions via GUI

1. Go to **Applications → Extensions**
2. Click **Add Extension → Add New PJSIP Extension**
3. Fill in:
   - **User Extension**: (number from table)
   - **Display Name**: (name from table)
   - **Secret**: (password from table)
4. Under **Advanced** tab:
   - **Maximum Contacts**: 5 (for mobile users) or 1 (for fixed)
5. Under **Voicemail** tab:
   - Enable if needed
   - Set voicemail password (same as extension password)
6. Click **Submit**
7. Repeat for all extensions
8. Click **Apply Config**

## PJSIP Settings

### TLS Transport Configuration

1. Go to **Settings → Asterisk SIP Settings**
2. Click **PJSIP Settings** tab
3. Find `0.0.0.0 (tls)` section:
   - **Port**: `8899`
   - **Domain**: `slf3.ddns.net`
   - **Certificate**: Select your imported certificate
4. Click **Submit**
5. Click **Apply Config**

### NAT Settings

1. Go to **Settings → Asterisk SIP Settings**
2. Under **General SIP Settings**:
   - **External Address**: `135.125.191.196`
   - **Local Networks**: Add your local subnets (e.g., `192.168.1.0/24`)
3. Click **Submit**
4. Click **Apply Config**

## Trunk Configuration

### YeastarGSMEgypt

1. Go to **Connectivity → Trunks**
2. Click **Add Trunk → Add SIP (chan_pjsip) Trunk**
3. **General** tab:
   - **Trunk Name**: `YeastarGSMEgypt`
4. **pjsip Settings** tab:
   - **Username**: `from-pstn`
   - **SIP Server**: `gsmegypt.hopto.org`
   - **SIP Server Port**: `5060`
   - **Authentication**: `Outbound`
   - **Registration**: `None`
5. **Advanced** tab:
   - **Match (Permit)**: `gsmegypt.hopto.org`
6. Click **Submit**

### YeastarGSMCanada

Same as above with:
- **Trunk Name**: `YeastarGSMCanada`
- **SIP Server**: `gsmcanda.hopto.org`
- **Match (Permit)**: `gsmcanda.hopto.org`

## Inbound Routes

### From Egypt Gateway

1. Go to **Connectivity → Inbound Routes**
2. Click **Add Incoming Route**
3. Settings:
   - **Description**: `From-GSM-Egypt`
   - **DID Number**: (leave blank for any)
   - **Set Destination**: Time Conditions → Holiday-Mode
4. Click **Submit**

### From Canada Gateway

Same as above with:
- **Description**: `From-GSM-Canada`

## Outbound Routes

### To Egypt (Prefix 0)

1. Go to **Connectivity → Outbound Routes**
2. Click **Add Outbound Route**
3. **Route Settings**:
   - **Route Name**: `Outbound-Egypt`
   - **Trunk Sequence**: YeastarGSMEgypt
4. **Dial Patterns**:
   - **Prefix**: `0`
   - **Match Pattern**: `.` (any digits)
5. Click **Submit**

### To Canada (Prefix 00)

Same as above with:
- **Route Name**: `Outbound-Canada`
- **Trunk Sequence**: YeastarGSMCanada
- **Prefix**: `00`

## Firewall Configuration

1. Go to **Connectivity → Firewall**
2. **Interfaces** tab:
   - Set your network interface to **Internet (Default Firewall)**
3. **Responsive Firewall** tab:
   - Enable for SIP protocol
4. **Networks** tab:
   - Add trusted networks (e.g., office IP)
5. Click **Save**

## Certificate Management

1. Go to **Admin → Certificate Management**
2. Click **Import Locally**
3. Upload:
   - **Certificate**: `slf3.crt`
   - **Private Key**: `slf3.key`
   - **CA Certificate**: `ca.crt` (if applicable)
4. Set as default for Asterisk

## User Manager

### Creating Users

1. Go to **Admin → User Management**
2. Click **Add User**
3. Fill in:
   - **Username**: (same as extension)
   - **Password**: (same as extension password)
   - **Default Extension**: (link to extension)
4. Click **Submit**

## Voicemail Email Settings

### SMTP Configuration

1. Go to **Settings → Voicemail Admin**
2. Click **Settings** tab
3. Configure:
   - **Email From Address**: `voicemail@yourdomain.com`
   - **SMTP Server**: Your SMTP server
   - **SMTP Port**: 587 (or 465 for SSL)
   - **SMTP Username**: Your email username
   - **SMTP Password**: Your email password
4. Click **Submit**

### Per-Extension Voicemail Email

1. Go to **Applications → Extensions**
2. Edit the extension
3. Under **Voicemail** tab:
   - **Email Address**: User's email
   - **Email Attachment**: Yes (to attach recording)
   - **Delete Voicemail**: Yes (if email-only)
4. Click **Submit**

## Time Conditions

### Holiday-Mode

1. Go to **Applications → Time Conditions**
2. Edit **Holiday-Mode**
3. Settings:
   - **Time Group**: Holiday
   - **Destination if True**: Announcement → Holiday-Announcement
   - **Destination if False**: Time Conditions → Sales-WorkTime
   - **Override Code**: `28` (dial *28 to toggle)
4. Click **Submit**

### Sales-WorkTime

1. Create new Time Condition
2. Settings:
   - **Name**: Sales-WorkTime
   - **Time Group**: Sales-WorkTime (08:10-22:59 daily)
   - **Destination if True**: IVR → Recording-Consent
   - **Destination if False**: Voicemail → 502

### FileTeam-WorkTime

1. Create new Time Condition
2. Settings:
   - **Name**: FileTeam-WorkTime
   - **Time Group**: FileTeam-WorkTime (08:00-16:59 Sun-Thu)
   - **Destination if True**: IVR → File-Team-Entry
   - **Destination if False**: Announcement → Files-OutWorkTime

## IVR Configuration

### Recording-Consent (IVR 1)

1. Go to **Applications → IVR**
2. Create/Edit IVR:
   - **Name**: Recording-Consent
   - **Announcement**: recording-consent-inbound
   - **Timeout**: 6 seconds
   - **Invalid Retries**: 2
3. **IVR Entries**:
   - **1**: IVR → Main-Menu-PSTN
   - **2**: Terminate Call → Hangup
4. **Invalid/Timeout Destination**: Ring Groups → 2000

### Main-Menu-Mobile (IVR 2)

1. Create/Edit IVR:
   - **Name**: Main-Menu-Mobile
   - **Announcement**: menu-for-mobile-callers
2. **IVR Entries**:
   - **1**: Ring Groups → 2000
   - **2**: Time Conditions → FileTeam-WorkTime
   - **3**: Voicemail → 505
3. **Invalid/Timeout Destination**: Ring Groups → 2000

### Main-Menu-PSTN (IVR 3)

Same as Main-Menu-Mobile with:
- **Announcement**: welcome-menu-for-PSTN-callers

### File-Team-Entry (IVR 4)

1. Create/Edit IVR:
   - **Name**: File-Team-Entry
   - **Announcement**: enter-file-number
   - **Enable Direct Dial**: Extensions
2. **Invalid/Timeout Destination**: Ring Groups → 2000

## Ring Groups

### Sales (2000)

1. Go to **Applications → Ring Groups**
2. Create/Edit Ring Group:
   - **Ring Group Number**: 2000
   - **Group Description**: Sales
   - **Extension List**: 101,201,202,203,204,205,206,207,208,301,302,303
   - **Ring Strategy**: ringall
   - **Ring Time**: 20
   - **Destination if No Answer**: Voicemail → 502
3. Click **Submit**

## Announcements

### Holiday-Announcement

1. Go to **Applications → Announcements**
2. Create:
   - **Description**: Holiday-Announcement
   - **Recording**: (holiday recording)
   - **Destination**: Voicemail → 502

### Files-OutWorkTime

1. Create:
   - **Description**: Files-OutWorkTime
   - **Recording**: files-outworktime-voicemail
   - **Destination**: Voicemail → 504

### Voicemail-Prompt

1. Create:
   - **Description**: Voicemail-Prompt
   - **Recording**: busy-voicemail
   - **Destination**: Voicemail → 502
