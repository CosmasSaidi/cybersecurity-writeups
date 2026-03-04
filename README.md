# 🏴 pwn.college Writeups

<div align="center">

![Security](https://img.shields.io/badge/Focus-Cybersecurity-red?style=for-the-badge)
![Education](https://img.shields.io/badge/Purpose-Educational-blue?style=for-the-badge)
![Ethical](https://img.shields.io/badge/Content-Ethical-green?style=for-the-badge)

**Educational writeups documenting my cybersecurity learning journey through pwn.college**

</div>

---

## ⚠️ Important Disclaimer

> **These writeups are strictly educational.** They focus on:
> - 🎯 **Methodology** - How to approach problems
> - 📚 **Concepts** - Understanding the underlying security principles
> - 🔧 **Commands** - Tools and techniques used
> - 💡 **Lessons** - Key takeaways for future reference
>
> **NO FLAGS or direct solutions are included.** This maintains the integrity of the learning platform and encourages others to learn through hands-on practice.

---

## 📁 Repository Structure

```
pwn-college-writeups/
├── README.md                    # This file
├── WRITEUP_TEMPLATE.md          # Template for new writeups
├── linux-luminarium/            # Linux fundamentals challenges
│   ├── README.md
│   └── *.md                     # Individual writeups
├── reverse-engineering/         # RE challenges
│   ├── README.md
│   └── *.md
├── binary-exploitation/         # Pwn challenges
│   ├── README.md
│   └── *.md
├── web-security/               # Web security challenges
│   ├── README.md
│   └── *.md
├── scripts/                    # Useful automation scripts
│   └── *.sh, *.py
└── assets/                     # Images and diagrams
    └── *.png, *.svg
```

---

## 📂 Categories

### 🐧 [Linux Luminarium](./linux-luminarium/)
Mastering Linux fundamentals - file systems, permissions, processes, and shell operations.

| Topic | Status | Writeups |
|-------|--------|----------|
| File System | 🟢 Complete | 5 |
| Permissions | 🟢 Complete | 4 |
| Processes | 🟡 In Progress | 2 |
| Shell Variables | 🟡 In Progress | 3 |

### 🔍 [Reverse Engineering](./reverse-engineering/)
Understanding binary analysis, disassembly, and program behavior.

| Topic | Status | Writeups |
|-------|--------|----------|
| Static Analysis | 🟢 Complete | 3 |
| Dynamic Analysis | 🟡 In Progress | 2 |
| Assembly Basics | 🟡 In Progress | 2 |

### 💥 [Binary Exploitation](./binary-exploitation/)
Learning memory corruption vulnerabilities and exploitation techniques.

| Topic | Status | Writeups |
|-------|--------|----------|
| Buffer Overflows | 🟡 In Progress | 2 |
| Format Strings | 🔴 Not Started | 0 |
| ROP Chains | 🔴 Not Started | 0 |

### 🌐 [Web Security](./web-security/)
Exploring common web vulnerabilities and secure coding practices.

| Topic | Status | Writeups |
|-------|--------|----------|
| SQL Injection | 🔴 Not Started | 0 |
| XSS | 🔴 Not Started | 0 |
| CSRF | 🔴 Not Started | 0 |

---

## 🛠️ Tools Used

| Tool | Purpose |
|------|---------|
| **GDB + GEF** | Debugging and memory inspection |
| **Ghidra** | Decompilation and static analysis |
| **objdump** | Disassembly |
| **strings** | Extracting readable strings |
| **file** | Identifying file types |
| **ltrace/strace** | Library and system call tracing |
| **pwntools** | Exploit development framework |
| **Radare2** | Advanced binary analysis |

---

## 📝 Writeup Methodology

Each writeup follows a consistent structure:

1. **Challenge Overview** - What the challenge presents
2. **Initial Analysis** - First observations and reconnaissance
3. **Approach** - Step-by-step methodology
4. **Commands Used** - Actual commands with explanations
5. **Concept Learned** - The security principle demonstrated
6. **Security Lesson** - Real-world implications
7. **Notes** - Additional observations

---

## 🎯 Learning Goals

- [x] Understand Linux file permissions and security
- [x] Master basic reverse engineering workflow
- [ ] Exploit buffer overflow vulnerabilities
- [ ] Understand format string vulnerabilities
- [ ] Learn Return-Oriented Programming (ROP)
- [ ] Master web application security testing

---

## 📊 Progress Tracker

```
Linux Luminarium    ████████████░░░░░░░░  60%
Reverse Engineering ████████░░░░░░░░░░░░  40%
Binary Exploitation ████░░░░░░░░░░░░░░░░  20%
Web Security        ░░░░░░░░░░░░░░░░░░░░   0%
```

---

## 🤝 Contributing

While these are personal learning notes, feel free to:
- Open issues for discussions about methodology
- Suggest improvements to explanations
- Share alternative approaches (without solutions!)

---

## 📜 License

This repository is for educational purposes only. All content is original and created during my learning journey.

---

<div align="center">

**Happy Hacking! 🏴‍☠️**

*Remember: Always practice ethically and legally!*

</div>
