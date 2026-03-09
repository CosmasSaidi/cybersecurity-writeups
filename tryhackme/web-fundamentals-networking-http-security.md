# Web Fundamentals (Concept-Only Summary)

**Platform:** TryHackMe  
**Date:** March 9, 2026

---

## Scope Covered

- Networking fundamentals
- DNS and name resolution
- HTTP communication model
- Web architecture basics
- HTML and JavaScript essentials
- Intro web security risks and defenses

---

## DNS Fundamentals

DNS maps human-readable domain names to IP addresses.

Example mapping:
- `example.com` → `93.184.216.34`

### Commands Practiced

```bash
nslookup website.com
nslookup --type=MX website.com
nslookup --type=TXT website.com
```

### DNS Record Types Learned

- **A**: domain to IPv4 address mapping
- **MX**: mail exchange servers
- **TXT**: arbitrary text/verification data
- **CNAME**: alias to canonical domain

---

## Ping & ICMP

`ping` verifies basic reachability and latency to a remote host using ICMP.

```bash
ping 8.8.8.8
```

Key metrics interpreted:
- packets sent/received
- latency
- packet loss

---

## Network Topologies

### Star
- devices connect to a central switch/hub
- easy to manage and troubleshoot

### Ring
- devices form a circular path
- failures can affect the communication path

### Bus
- devices share one backbone cable
- simple and low cost, but less resilient

---

## OSI Model (7 Layers)

1. **Application**: user-facing protocols and services
2. **Presentation**: data format and encryption/encoding
3. **Session**: session establishment and management
4. **Transport**: reliable/unreliable transport (`TCP` / `UDP`)
5. **Network**: IP addressing and routing
6. **Data Link**: MAC addressing and switching
7. **Physical**: media, signaling, hardware

---

## HTTP Fundamentals

HTTP enables browser-server communication.

### Request Example

```http
GET /index.html HTTP/1.1
Host: example.com
```

### Response Example

```http
HTTP/1.1 200 OK
Content-Type: text/html
```

### HTTP Methods Learned
- `GET` retrieve
- `POST` submit
- `PUT` update
- `DELETE` remove

### Status Codes Reviewed
- `200` success
- `301` redirect
- `403` forbidden
- `404` not found
- `500` server error

### Common Headers
- `Host`
- `User-Agent`
- `Content-Type`
- `Authorization`
- `Cookie`

---

## Cookies

Cookies store session/context data (for authentication state, preferences, and tracking context).

Example:
- `sessionid=abc123`

---

## HTML & JavaScript Basics

### HTML
Core structure elements used to build page layout and content.

Common tags practiced:
- `<h1>` heading
- `<p>` paragraph
- `<a>` hyperlink
- `<img>` image

### JavaScript
Client-side language for dynamic behavior and interactivity in the browser.

---

## Web Security Concepts Introduced

### Sensitive Data Exposure
Developers may accidentally expose secrets or operational details in client-side code.

### HTML Injection
Occurs when untrusted input is rendered unsafely into HTML contexts.

### Cross-Site Scripting (XSS)
JavaScript injection in browser context can lead to session abuse, user redirection, and script execution.

---

## Tools Encountered

- Wireshark (packet inspection)
- Burp Suite (HTTP interception and analysis)
- Browser developer/source inspection

---

## Web Communication Flow

User request flow:
1. DNS lookup
2. Browser sends HTTP request
3. Server processes request
4. Server sends response
5. Browser renders HTML/CSS/JavaScript

---

## Skills Gained

- DNS querying and record inspection
- Network connectivity testing with ICMP
- HTTP request/response analysis
- Understanding web architecture and request flow
- HTML and JavaScript foundational understanding
- Identifying exposure and injection risk patterns
- Intro familiarity with web testing tools

---

## Badges Earned

- Webbed
- World Wide Web

---

*Concept and methodology documentation only. No platform solutions or challenge answers included.*
