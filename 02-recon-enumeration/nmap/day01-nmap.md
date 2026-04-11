# Day 01 — Nmap Reconnaissance

## Target
scanme.nmap.org

## Command Used
nmap -sV --version-light scanme.nmap.org

## Open Ports
22/tcp  open  ssh        OpenSSH 6.6.1p1 Ubuntu  
80/tcp  open  http       Apache httpd 2.4.7  
9929/tcp open  nping-echo  
31337/tcp open  tcpwrapped  

## Observations
- SSH service running
- Apache web server detected
- Linux OS identified
- unusual port 31337 present

## Security Thinking
Port 80 likely main attack surface
Old Apache version may contain vulnerabilities
SSH could allow brute force attempts

## Learning
- Nmap identifies open ports
- -sV detects service versions
- reconnaissance reveals attack surface

## Next Step
Learn subnetting and local network scanning
