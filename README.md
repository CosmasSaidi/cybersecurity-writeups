# Cybersecurity Learning Journey

Technical writeups and methodology documentation from hands-on security training platforms, Internet infrastructure coursework, and **self-directed independent lab work** (VulnVault).

---

## 🌐 Internet Society Learning Platform

**Focus Area:** computer networking, Internet architecture, Internet governance, trust and safety, and community network readiness.

### Completed / Participated Courses

- Fundamentals of Designing and Deploying Computer Networks
- Internet Governance
- What the Internet Needs to Exist
- What the Internet Needs to Thrive
- Introduction to Online Trust and Safety
- Community Network Readiness Assessment Program
- Community Networking Concepts and Deployment Readiness

### Skills Practiced

- Computer network design and deployment
- Internet infrastructure and architecture
- Community and enterprise networking concepts
- Internet governance and policy
- Online trust, safety, and resilience
- Network sustainability and operational best practices
- Connectivity planning and network readiness assessment

### Concepts Learned

- Designing and deploying computer networks
- Internet governance and policy basics
- Trust, safety, and resilience in Internet systems
- Community network readiness and sustainability
- Connectivity planning for real-world deployments

### Practical Value

- Stronger context for how enterprise and community networks are built and maintained
- Better understanding of how Internet systems, policy, and trust requirements shape deployment choices
- Clearer planning skills for deployment readiness, operational sustainability, and resilient connectivity

---

## 🧭 Cisco Networking Academy

**Focus Area:** hands-on network design, Packet Tracer simulation, and core routing and switching concepts.

### Skills Practiced

- Network topology design
- Router and switch configuration
- IP addressing and subnetting
- VLAN implementation
- Static and dynamic routing concepts
- DHCP and DNS configuration
- Network troubleshooting and diagnostics
- End-to-end network deployment simulations

### Concepts Learned

- TCP/IP networking fundamentals
- Routing and switching basics
- Enterprise network segmentation with VLANs
- Address planning, subnetting, and service assignment
- Simulation-based validation with Cisco Packet Tracer

### Practical Value

- Reinforced operational networking skills that support later enterprise, cloud, and security work
- Improved ability to reason about network behavior before applying security controls
- Built a repeatable workflow for topology design, service configuration, and network troubleshooting

---

## 🎯 pwn.college

**Focus Area:** Linux fundamentals, shell interaction, binary basics, and basic exploitation concepts.

### Skills Practiced

- Linux command-line navigation
- File and directory manipulation
- File permission management
- Understanding environment variables
- Process control and management
- Input/output redirection
- Piping command output between programs
- Shell scripting fundamentals
- Understanding binary and byte basics
- Working with text transformation commands

### Commands Used

| Category | Commands |
|----------|----------|
| Navigation | `ls`, `cd`, `pwd`, `cat`, `echo` |
| Permissions | `chmod`, `chown` |
| Text Processing | `head`, `tr`, `grep`, `printf` |
| Process Management | `sleep`, `fg`, `bg`, `ps`, `jobs` |
| Environment | `env`, `export`, `printenv` |

### Concepts Learned

- Linux filesystem structure
- Standard input, output, and error streams
- Piping and redirection
- Background vs foreground processes
- Environment variable manipulation
- Basic shell scripting logic
- Binary representation of data
- Byte-level understanding of information

### Writeups

#### Linux Luminarium
- [File Permissions](linux-luminarium/file-permissions.md) - chmod, ownership, SUID/SGID
- [Environment Variables](linux-luminarium/environment-variables.md) - PATH, variable manipulation
- [Shell Scripting](linux-luminarium/shell-scripting.md) - Bash fundamentals, shebang, command substitution
- [Process Control](linux-luminarium/process-control.md) - Background processes, fg/bg, jobs, su
- [Piping](linux-luminarium/piping.md) - stdin/stdout redirection, command chaining
- [PATH Manipulation](linux-luminarium/path-manipulation.md) - PATH hijacking techniques

#### Playing with Programs
- [Data Dealings](playing-with-programs/data-dealings.md) - Encoding, base64, hex, binary basics

---

## 🟩 Hack The Box Academy

**Focus Area:** Linux system fundamentals, system enumeration, and understanding system configuration.

### Skills Practiced

- Identifying current user and permissions
- Inspecting system users
- Determining kernel version
- Understanding Linux system information
- Inspecting network interfaces
- Understanding MTU configuration

### Commands Used

| Category | Commands |
|----------|----------|
| User Info | `whoami`, `id`, `groups` |
| System Info | `uname -a`, `uname -r`, `hostname` |
| Files | `cat /etc/passwd`, `cat /etc/shadow` |
| Network | `ip a`, `ip link`, `netstat`, `ss` |

### Concepts Learned

- User and group identification
- Linux kernel version identification
- System architecture awareness
- Network interface discovery
- Home directory structure
- Password hash locations

---

## 🔴 TryHackMe

Hands-on learning in both offensive and defensive security workflows.

### Skills Practiced

- Web directory enumeration
- HTTP status code analysis during endpoint discovery
- Identifying and validating business-logic vulnerabilities
- SIEM alert triage and SOC investigation workflow
- Incident response actions (containment and hardening)
- Basic WAF and rate-limiting defensive tuning
- DNS querying and record analysis
- Network connectivity testing with ICMP
- HTTP header and method analysis
- Intro analysis of HTML/JavaScript-driven web behavior
- Recognizing exposure and injection risk patterns
- CIA triad and core cybersecurity principles
- Packet capture and protocol inspection
- Network service discovery and reconnaissance
- Web technology fingerprinting and application mapping
- Password attack concepts and authentication risk awareness
- Data encoding and binary representation basics
- Python, JavaScript, SQL, and backend technology awareness

### Concepts Learned

- Offensive vs defensive security lifecycle
- Directory brute forcing and hidden endpoint discovery
- Business logic vulnerability identification
- SOC and SIEM fundamentals
- Defense-in-depth controls for web attacks
- DNS records (A, MX, TXT, CNAME)
- OSI model layering and network topology fundamentals
- Cookie/session fundamentals in web applications
- Sensitive data exposure, HTML injection, and XSS basics
- Computer hardware architecture and components
- Virtualization concepts and hypervisor types
- Cloud computing fundamentals
- Client-server architecture
- Operating system security principles
- Kernel vs user space separation
- Endpoint security investigation
- Boot process and BIOS/UEFI
- CIA triad application to security controls
- Symmetric vs asymmetric encryption concepts
- Packet layer analysis across DNS and transport protocols
- Port scanning, service exposure, and attack surface mapping
- Web stack fingerprinting through headers and technology indicators
- Password security controls, MFA, and rate limiting importance
- Data encoding versus encryption versus hashing distinctions
- SQL, JavaScript, and Node.js relevance to application security

### Tools Used

- dirb
- Web browser
- Linux terminal
- Basic SOC dashboard
- nslookup
- ping
- Wireshark
- Burp Suite
- Nmap
- WhatWeb
- Gobuster
- Hydra
- curl
- xxd
- hexdump
- base64
- Python
- Hashcat
- John the Ripper

### Writeups

- [Offensive & Defensive Security Intro](tryhackme/offensive-defensive-security-intro.md)
  - Directory enumeration, business-logic exploitation, SIEM-driven response and mitigation
- [Web Fundamentals](tryhackme/web-fundamentals-networking-http-security.md) - DNS, ICMP, HTTP, OSI model, web architecture, and intro web security concepts
- [Computer Fundamentals & OS Security](tryhackme/computer-fundamentals-virtualization-os-security.md)
  - Hardware, virtualization, cloud, client-server, OS security, kernel vs user space
- [Security Fundamentals, Crypto & Recon Concepts](tryhackme/security-fundamentals-crypto-recon-programming.md)
  - CIA triad, cryptography, packet analysis, reconnaissance, encoding, and programming security concepts
- [Practical Attack Lifecycle Summary](tryhackme/practical-attack-lifecycle-summary.md)
  - High-level exploitation-to-post-exploitation learning journal with defensive takeaways
- [NTLM Credential Exposure & Moniker Link Risk](tryhackme/ntlm-credential-exposure-and-moniker-link-risk.md)
  - NetNTLMv2 exposure patterns, Responder lab awareness, CVE-2024-21413 risk context

---

## 🧪 VulnVault Self-Directed Independent Lab

**Status:** Self-researched, self-setup vulnerable web application lab (Flask-based, localhost:5000)

This section documents **independent achievement** in cybersecurity hands-on work. All VulnVault material is the result of self-directed learning—no platform guidance, no tutorials—deploying a vulnerable application locally and systematically discovering, understanding, and exploiting web security vulnerabilities through practical attack methodology.

### Independent Lab Work

**Application Setup & Deployment:**
- Independently deployed vulnerable Flask web application (VulnVault)
- Configured local environment for secure testing
- Identified attack surfaces through enumeration
- Developed exploitation methodology for multiple vulnerability classes

### Skills Mastered (Self-Directed Learning)

**Web Application Enumeration:**
- Manual reconnaissance using browser DevTools and Network analysis
- Automated directory/file discovery with Gobuster
- API endpoint identification and parameter mapping
- Technology stack fingerprinting
- Information disclosure from error messages and HTTP headers

**Web Security Vulnerability Exploitation:**
- Cross-Site Scripting (XSS): Reflected, Stored, DOM-based attack vectors
- SQL Injection: Authentication bypass, data extraction, database enumeration
- File Upload vulnerabilities: Validation bypass, web shell deployment
- Remote Code Execution: Post-shell system access and privilege escalation

**Offensive Methodology:**
- Burp Suite Community: Request interception, parameter testing, response analysis
- Payload construction and filter bypass techniques
- Post-exploitation information gathering and data exfiltration
- Understanding attacker perspective vs defensive controls

### Practical Writeups (Self-Directed Lab)

- [Web Enumeration & Reconnaissance Methodology](tryhackme/web-enumeration-and-reconnaissance.md)
  - Manual + automated enumeration, Burp Suite workflows, attack surface mapping
- [Cross-Site Scripting (XSS) Fundamentals & Attack Methodology](tryhackme/xss-cross-site-scripting-fundamentals.md)
  - Reflected/Stored/DOM XSS, payload construction, filter bypass, impact analysis
- [SQL Injection Fundamentals & Authentication Bypass](tryhackme/sql-injection-authentication-bypass.md)
  - Authentication bypass, UNION-based extraction, Boolean/Time-based Blind SQLi
- [Gobuster Directory & Resource Enumeration Methodology](tryhackme/gobuster-enumeration-methodology.md)
  - Automated directory discovery, wordlist strategy, interpretation of findings
- [File Upload Vulnerabilities & Web Shells](tryhackme/file-upload-and-web-shells.md)
  - Upload validation bypass, web shell deployment, remote code execution
- [Post-Exploitation & System Access Methodology](tryhackme/post-exploitation-and-system-access.md)
  - System reconnaissance, privilege escalation, credential discovery, data exfiltration

### Key Achievement

Successfully designed, deployed, tested, and fully documented a complete attack-to-compromise workflow on a vulnerable web application, demonstrating:
- ✅ End-to-end penetration testing methodology
- ✅ Multi-stage exploitation (enumeration → injection → RCE → escalation)
- ✅ Complete data exfiltration capability
- ✅ Understanding of both attack vectors and defensive mitigations
- ✅ Professional-grade security research and documentation

---

## 🛠️ Cross-Platform Skills Developed

### Networking & Internet Infrastructure
- Network design and deployment planning
- TCP/IP, subnetting, and routing basics
- VLANs, DHCP, DNS, and topology simulation
- Internet governance, trust, safety, and resilience concepts

### Linux & System Fundamentals
- Command line navigation and automation
- File and permission management
- Process management and system inspection
- System configuration and security principles

### Enumeration & Reconnaissance
- User and service enumeration
- System information gathering
- Network reconnaissance
- Web application attack surface mapping
- Automated discovery with Gobuster

### Web Security (Self-Directed)
- HTTP protocol understanding
- SQL Injection attacks and database exploitation
- Cross-Site Scripting (XSS) attack vectors
- File upload exploitation
- Web shell deployment and command execution
- Post-exploitation methodology

### Defensive Translation (Attacker → Defense)
- Understanding exploitation techniques to recognize defensive gaps
- Security control analysis
- Risk assessment from attacker perspective
- Input validation and output encoding importance
- Parameterized queries and secure coding practices

---

## 🧰 Tools Used Across Platforms

| Tool | Purpose | Usage |
|------|---------|-------|
| Cisco Packet Tracer | Network topology design and simulation | Internet Society, Cisco Networking Academy |
| Linux CLI | System interaction, command-line operations | All platforms |
| Bash Shell | Scripting, automation, command execution | All platforms |
| Browser DevTools | Web security testing, request inspection | TryHackMe, VulnVault |
| Burp Suite Community | HTTP interception, parameter testing, web shell deployment | VulnVault |
| Nmap | Service discovery, reconnaissance | TryHackMe, VulnVault |
| Gobuster | Directory/file/subdomain enumeration | VulnVault |
| WhatWeb | Technology fingerprinting | TryHackMe, VulnVault |
| Wireshark | Packet capture and protocol inspection | TryHackMe |
| Hashcat | Password cracking and hash analysis | TryHackMe |
| John the Ripper | Password cracking | TryHackMe |
| LinPEAS | Automated enumeration | General privilege escalation |
| GTFOBins | Binary exploitation reference | VulnVault post-exploitation |

---

## 📈 Current Focus Areas

- **Network engineering growth:** Linux systems administration, virtualization, enterprise infrastructure, Active Directory, and cloud fundamentals
- **Platform-based learning:** TryHackMe, pwn.college, Hack The Box Academy
- **Internet infrastructure:** Internet Society and Cisco Networking Academy coursework
- **Self-directed lab work:** VulnVault independent research and exploitation
- **Advanced web security:** XSS, SQLi, file uploads, RCE, post-exploitation
- **System enumeration:** User discovery, privilege escalation vectors, credential hunting
- **Defensive translation:** Understanding exploits to implement security controls

---

## 🎓 Learning Methodology

**Platform-Based:** Structured learning paths on established CTF, networking, and Internet training platforms provide guided progression through fundamental concepts with validated solutions.

**Self-Directed Lab:** Independent vulnerability research, exploitation, and documentation validates practical understanding and demonstrates autonomous security research capability.

**Cross-Platform Integration:** Combining platform-guided learning with independent lab work ensures both structured knowledge and hands-on mastery across networking, infrastructure, and security.

---

*Methodology documentation only. No flags or direct platform solutions included. VulnVault lab work represents independent research and self-directed exploitation testing.*
