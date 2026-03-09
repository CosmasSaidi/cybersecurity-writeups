# Cybersecurity Learning Journey

Technical writeups and methodology documentation from hands-on security training platforms.

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

### Tools Used

- dirb
- Web browser
- Linux terminal
- Basic SOC dashboard
- nslookup
- ping
- Wireshark
- Burp Suite

### Writeups

- [Offensive & Defensive Security Intro](tryhackme/offensive-defensive-security-intro.md) - Directory enumeration, business-logic exploitation, SIEM-driven response and mitigation
- [Web Fundamentals](tryhackme/web-fundamentals-networking-http-security.md) - DNS, ICMP, HTTP, OSI model, web architecture, and intro web security concepts

---

## 🛠️ Cross-Platform Skills Developed

### Linux Skills
- Command line navigation
- File and permission management
- Process management
- System configuration inspection

### Enumeration Skills
- User enumeration
- System information gathering
- Network interface discovery
- Kernel version identification

### Security Concepts
- Access control vulnerabilities
- Web authentication mechanisms
- System reconnaissance
- Binary and byte-level understanding of data

---

## 🧰 Tools Used Across Platforms

| Tool | Purpose |
|------|---------|
| Linux CLI | System interaction, command-line operations |
| Bash Shell | Scripting, automation |
| Browser DevTools | Web security testing |
| LinPEAS | Automated enumeration |
| GTFOBins | Binary exploitation reference |

---

## 📈 Current Focus Areas

- Linux system enumeration
- Network reconnaissance
- Web security fundamentals
- Shell scripting and automation
- Binary and data representation basics
- Privilege escalation techniques

---

*Methodology documentation only. No flags or solutions included.*
