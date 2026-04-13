# Day 02 — Local Network Reconnaissance

## Objective
Perform host discovery and analyze local network devices

## My IP
10.23.119.198

## Network Range
10.23.119.0/24

## Command Used
nmap -sn 10.23.119.0/24

## Active Hosts Found
- 10.23.119.47
- 10.23.119.198 (self)
- 10.23.119.200

## Target Analysis
Selected 10.23.119.47 for deeper scan

## TCP Scan
nmap 10.23.119.47

Result:
53/tcp open domain (DNS)

## UDP Scan
sudo nmap -sU -p 53 10.23.119.47

Result:
53/udp open domain (DNS)

## MAC Address
CA:E0:CB:CF:A6:F5 (Unknown)

## Observations
Device is running DNS service on both TCP and UDP
Likely a router or DNS server in the network
Only limited hosts responded to scan

## Learning
Subnet determines scanning range
Host discovery identifies active devices
DNS operates on both TCP and UDP
UDP scanning requires root privileges

## Security Thinking
DNS servers are critical infrastructure
Compromising DNS can affect entire network
Not all devices respond to ping scans

## Issue Faced
UDP scan required root privileges

## Solution
Used sudo to perform scan

## Next Step
Study ARP protocol and MAC address mapping
