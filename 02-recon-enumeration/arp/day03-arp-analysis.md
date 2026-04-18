# Day 03 — ARP Analysis & MAC Address Mapping

## Objective
Perform ARP-based network analysis to map IP addresses to MAC addresses and understand device identity on a local network.

---

## Theory — What is ARP?

ARP (Address Resolution Protocol) is used to map:
IP Address → MAC Address

Why?
- IP = logical identity (used for communication)
- MAC = physical identity (hardware-level)

When a device wants to communicate locally:
1. It broadcasts: "Who has this IP?"
2. Target device replies with its MAC address
3. Entry stored in ARP table

---

## Command Used

ip neigh

---

## Real Output Observed

192.168.43.1 dev wlo1 lladdr ba:f2:af:61:fa:3c REACHABLE

---

## Output Breakdown

- IP Address: 192.168.43.1  
- Interface: wlo1 (WiFi)  
- MAC Address: ba:f2:af:61:fa:3c  
- State: REACHABLE  

---

## Interpretation

- 192.168.43.1 is the gateway (mobile hotspot device)
- MAC address belongs to the phone acting as router
- Only one external device exists in this network

---

## Network Context

Current Network Type: Mobile Hotspot

Devices:
- 192.168.43.1 → Phone (Router)
- 192.168.43.198 → My system

Total Devices: 2

---

## Learning

- ARP table stores recently communicated devices
- ARP does not show entire network, only active interactions
- MAC address is unique per device (hardware fingerprint)
- Small networks limit reconnaissance depth

---

## Security Perspective

ARP is a critical protocol in network security:

### Potential Attacks
- ARP Spoofing / Poisoning
- Man-in-the-Middle (MITM)
- Traffic interception

### Why It Matters
If attacker manipulates ARP:
- They can redirect traffic
- Intercept sensitive data
- Control communication flow

---

## Practical Insight

- ARP analysis helps identify real devices in network
- Useful in:
  - Network mapping
  - Device identification
  - Intrusion detection
- ARP scan is more reliable than ping scan in local networks

---

## Limitation Observed

- Only 1 device detected due to small network size
- Limited attack surface
- No multi-device interaction

---

## Improvement Strategy

To gain deeper understanding:
- Use larger network (college WiFi)
- Perform ARP scan:

sudo nmap -sn -PR <network-range>

- Compare results with ping scan

---

## Key Takeaways

- ARP reveals real device identity (MAC)
- Network environment directly affects recon results
- Small networks = limited visibility
- Larger networks = better learning opportunities

---

## Next Step

- Perform ARP scan on larger network
- Map multiple devices
- Identify vendors using MAC lookup
- Move towards network fingerprinting
