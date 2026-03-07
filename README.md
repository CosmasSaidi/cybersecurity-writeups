# Cybersecurity Learning Journey

Technical writeups and methodology documentation from hands-on security training platforms.

---

## 🎯 pwn.college

**Focus Area:** Linux fundamentals, shell interaction, binary basics, web fundamentals, and basic exploitation concepts.

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
- HTTP request crafting and web communication
- Virtual host enumeration

### Commands Used

| Category | Commands |
|----------|----------|
| Navigation | `ls`, `cd`, `pwd`, `cat`, `echo` |
| Permissions | `chmod`, `chown` |
| Text Processing | `head`, `tr`, `grep`, `printf` |
| Process Management | `sleep`, `fg`, `bg`, `ps`, `jobs` |
| Environment | `env`, `export`, `printenv` |
| Web/HTTP | `nc`, `curl`, `curl -v`, `python requests` |

### Concepts Learned

- Linux filesystem structure
- Standard input, output, and error streams
- Piping and redirection
- Background vs foreground processes
- Environment variable manipulation
- Basic shell scripting logic
- Binary representation of data
- Byte-level understanding of information
- HTTP request structure and methods
- Host header and virtual host routing
- Manual HTTP crafting with netcat
- Web automation with curl and Python

### Writeups

#### Linux Luminarium
- [File Permissions](linux-luminarium/file-permissions.md) - chmod, ownership, SUID/SGID
- [Environment Variables](linux-luminarium/environment-variables.md) - PATH, variable manipulation
- [Shell Scripting](linux-luminarium/shell-scripting.md) - Bash fundamentals, shebang, command substitution
- [Process Control](linux-luminarium/process-control.md) - Background processes, fg/bg, jobs, su
- [Piping](linux-luminarium/piping.md) - stdin/stdout redirection, command chaining
- [PATH Manipulation](linux-luminarium/path-manipulation.md) - PATH hijacking techniques

#### Talking Web
- [Web Fundamentals](linux-luminarium/web-fundamentals.md) - HTTP requests, netcat, curl, Host header, virtual hosts
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

**Focus Area:** Web application security fundamentals and vulnerability discovery.

### Skills Practiced

- Understanding web authentication mechanisms
- Inspecting web application behavior
- Identifying insecure access control mechanisms
- Observing URL parameter manipulation

### Concepts Learned

- Insecure Direct Object Reference (IDOR)
- Authentication and authorization concepts
- Web application attack surface
- Basic web vulnerability discovery

### Tools Used

- Web browser
- Developer tools (page source inspection)
- Burp Suite (proxy)

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
