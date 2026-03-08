# Offensive & Defensive Security Intro

**Platform:** TryHackMe  
**Rooms:** Offensive Security Intro, Defensive Security Intro  
**Date:** March 7, 2026

---

## Objective

Build foundational understanding of both attack and defense workflows by:
- discovering hidden web functionality from an attacker perspective
- investigating and mitigating web discovery activity from a SOC perspective

---

## Part 1 — Offensive Security Intro

### Core Technique: Directory Enumeration

Many web applications expose endpoints that are not visible in the UI. Enumeration tools can discover these paths by testing common directory names.

### Tool Used

- `dirb`

### Command Executed

```bash
dirb http://target-site
```

### Wordlist

- `/usr/share/dirb/wordlists/common.txt`
- ~4600 common directory/file candidates

### Key Findings

- discovered unlinked or hidden web endpoints
- identified routes that returned meaningful HTTP responses

### HTTP Status Codes Interpreted

- `200` → resource exists and responds successfully
- `301` → resource redirects
- `404` → resource not found

### Security Observation

Enumeration can reveal sensitive functionality that should be protected by proper authorization.

This demonstrates a **business logic vulnerability** pattern caused by missing access-control validation on critical actions.

### Offensive Skills Learned

- web directory enumeration
- brute-force endpoint discovery
- HTTP status code analysis
- hidden route identification
- basic business-logic exploitation

---

## Part 2 — Defensive Security Intro

### SOC & SIEM Foundations

- **SOC (Security Operations Center):** Team responsible for continuous monitoring, threat detection, and incident response.
- **SIEM (Security Information and Event Management):** Centralized platform that ingests and correlates logs from endpoints, servers, firewalls, and applications.

### Defensive Controls Introduced

- security awareness training
- intrusion detection systems (IDS)
- firewalls
- security policies
- defense-in-depth

---

## Practical Exercise — Defend a Web Application

### Alert Investigated

- **Web Discovery Attack**

This indicated automated path enumeration behavior against the web application.

### Threat Source

- suspicious external source identified through SIEM telemetry

### Response Actions Taken

1. **IP Blocking**
   - Blocked source IP for 24 hours.
2. **Rate Limiting**
   - Restricted requests per second to reduce automated scanning.
3. **WAF Rule Tuning**
   - Added rule logic to detect/block suspicious directory brute-force patterns.

### Outcome

The active attack was mitigated and stronger preventive controls were added.

### Defensive Skills Learned

- SIEM alert triage
- SOC investigation workflow
- incident response actions
- source IP containment
- rate-limiting implementation
- WAF-based protection
- attacker behavior analysis

---

## Tools Encountered

- `dirb`
- web browser
- Linux terminal
- SOC dashboard (intro level)

---

## Domains Practiced

- web application security
- threat detection
- incident response
- security monitoring
- blue-team defense
- foundational red-team techniques

---

## Key Takeaway

Offensive security identifies weaknesses and validates exploitability. Defensive security detects malicious activity and applies controls to contain and prevent recurrence. Combining both perspectives builds stronger practical security judgment.
