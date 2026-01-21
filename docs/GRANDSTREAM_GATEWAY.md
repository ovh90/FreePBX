# Grandstream GXW410X PSTN Gateway Configuration

## Device Information

| Property | Value |
|----------|-------|
| Model | Grandstream GXW4104 |
| Firmware | 1.4.1.5 |
| Local IP | 10.0.1.51 |
| Web UI | http://10.0.1.51/ |
| Login | admin / admin |

## Network Configuration

- IP Assignment: DHCP
- This gateway is on a local network in Egypt
- Connects to FreePBX at 135.125.191.196:5060

## FXO Channel to DID Mapping

| FXO Port | Phone Line | DID |
|----------|------------|-----|
| Channel 1 | 888 line | 888 |
| Channel 2 | 333 line | 333 |
| Channel 3 | Unused | - |
| Channel 4 | Unused | - |

## Grandstream Configuration

### Channels Settings (Settings > Channels Settings)

```
User ID: ch1:888;ch2:333;ch3-4:;
SIP Server: ch1-4:p1;
SIP Destination Port: ch1-4:5060;
DTMF Methods: ch1-4:1; (in-audio)
```

### Account 1 Settings (Accounts > Account 1)

```
SIP Server: 135.125.191.196
SIP User ID: grandstream
Register: Yes (if using registration)
SIP Destination Port: 5060
```

## FreePBX Configuration

### Option 1: IP-Based Identification (Recommended)

If the Grandstream shares the same public IP as the Yeastar gateway (172.110.223.x), no additional FreePBX configuration is needed. The existing identify section will match:

```ini
; /etc/asterisk/pjsip.identify_custom.conf
[Yeastar-02-identify]
type=identify
endpoint=Yeastar-02
match=172.110.223.0/24
```

### Option 2: Create Dedicated Trunk

If the Grandstream uses a different public IP, create a new trunk:

1. **In FreePBX GUI**: Connectivity > Trunks > Add Trunk > Add SIP (pjsip) Trunk
2. **Trunk Name**: Grandstream-FXO
3. **Context**: from-pstn
4. **Identify By**: IP Address
5. **Match IP**: [Grandstream's public IP]

### Inbound Routes

The DIDs 888 and 333 are handled by the existing call flow:

1. Inbound call arrives at `from-pstn`
2. Routes to `ext-did-0001` (Main-Inbound)
3. Goes through Time Conditions (Holiday-Mode, Sales-WorkTime)
4. Reaches IVR-1 (Recording-Consent)
5. After pressing 1, goes to `custom-menu-split`
6. `custom-menu-split` routes:
   - DID 888 or 333 → IVR-3 (Main-Menu-PSTN)
   - Other DIDs → IVR-2 (Main-Menu-Mobile)

## Troubleshooting

### Gateway Not Registering

The gateway shows "SIP Registration: No" because:
- SIP User ID "grandstream" doesn't match any FreePBX endpoint
- This is **expected** if using IP-based identification
- Calls will still work if the IP identify section matches

### Verify DID is Being Sent

On FreePBX, check Asterisk logs:
```bash
tail -f /var/log/asterisk/full | grep -E "FROM_DID|IN_DID"
```

### Check PJSIP Identifies

```bash
asterisk -rx 'pjsip show identifies'
```

## Call Flow Diagram

```
PSTN Line 888/333
       │
       ▼
┌─────────────────┐
│ Grandstream     │
│ GXW410X         │
│ (10.0.1.51)     │
└────────┬────────┘
         │ SIP INVITE (DID=888 or 333)
         │ via NAT (public IP)
         ▼
┌─────────────────┐
│ FreePBX         │
│ 135.125.191.196 │
└────────┬────────┘
         │ IP match → Yeastar-02 endpoint
         ▼
    from-pstn context
         │
         ▼
    ext-did-0001 (Main-Inbound)
         │
         ▼
    Time Conditions
         │
         ▼
    IVR-1 (Recording-Consent)
         │ Press 1
         ▼
    custom-menu-split
         │
    ┌────┴────┐
    │         │
DID 888/333   Other DIDs
    │         │
    ▼         ▼
  IVR-3     IVR-2
(PSTN Menu) (Mobile Menu)
```

## Notes

- The Grandstream is a **separate device** from the Yeastar GSM gateway
- Both may share the same public IP if on the same Egypt network
- DIDs are sent in the SIP INVITE To/Request-URI header
