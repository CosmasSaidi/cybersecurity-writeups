# Computer Fundamentals, Virtualization & OS Security

## Overview

This writeup covers foundational computing concepts essential for cybersecurity: hardware architecture, virtualization, cloud computing, client-server models, and operating system security principles.

---

## 1. Computer Types

Computers come in many forms depending on their purpose and resources.

**Examples:**
- Desktop computers
- Laptops
- Servers
- Smartphones
- Embedded systems

**Key Concept:** Different computers are optimized for different tasks such as performance, mobility, power consumption, and scalability.

---

## 2. Computer Hardware Components

### Core Components

| Component | Function |
|-----------|----------|
| **CPU** | Executes instructions and processes data |
| **RAM** | Temporary memory for running programs (volatile) |
| **Storage (HDD/SSD/NVMe)** | Permanent storage for OS, apps, and files |
| **Motherboard** | Central board connecting all components |
| **PSU** | Provides electrical power |
| **GPU** | Handles graphics and computational tasks |

---

## 3. Boot Process

What happens when a computer starts:

1. Power supply starts
2. BIOS/UEFI firmware loads
3. POST (Power-On Self Test) checks hardware
4. Bootloader loads the operating system
5. Operating system starts
6. User login screen appears

**Security Note:** BIOS/UEFI can be password-protected to prevent unauthorized boot modifications.

---

## 4. Virtualization

Virtualization allows multiple virtual computers to run on one physical machine.

### Key Concepts

**Virtual Machine (VM):** A software-based computer running inside another computer.

**Hypervisor:** Software responsible for creating and managing VMs.

| Type | Description |
|------|-------------|
| Type 1 (Bare-metal) | Runs directly on hardware |
| Type 2 | Runs on top of an operating system |

### Benefits
- Cost reduction
- System isolation
- Easier testing environments
- Efficient resource utilization

**Security Use Case:** Malware analysis in isolated VMs prevents infection of host system.

---

## 5. Cloud Computing

Cloud computing allows infrastructure to run over the internet instead of on physical servers.

### Common Providers
- Amazon Web Services (AWS)
- Microsoft Azure
- Google Cloud

### Cloud Resources
- Virtual machines
- Storage
- Databases
- Networks
- Applications

### Example Workflow
1. Launch a cloud instance
2. Choose operating system
3. Allocate CPU and RAM
4. Connect remotely using SSH

---

## 6. Client-Server Architecture

How communication between systems works:

| Role | Function |
|------|----------|
| **Client** | Sends requests |
| **Server** | Responds to requests |

**Example Flow:**
```
Browser → Request → Web Server
Web Server → Response → Browser
```

**HTTP Request Example:**
```
GET / HTTP/1.1
Host: example.com
```

**HTTP Response Example:**
```
HTTP/1.1 200 OK
```

---

## 7. Operating System Security

How operating systems protect resources and users:

| Component | Purpose |
|-----------|---------|
| **User Accounts** | Control who can access the system |
| **Authentication** | Verify identity (passwords, keys) |
| **Permissions** | Control file and resource access |
| **Firewalls** | Control network connections |
| **Security Updates** | Patch vulnerabilities |

---

## 8. Kernel Space vs User Space

Operating systems separate privileges into two spaces:

| Space | Access Level |
|-------|--------------|
| **Kernel Space** | Unrestricted hardware access |
| **User Space** | Limited permissions for applications |

**Security Purpose:** Prevents applications from directly controlling system hardware. Exploits often attempt to escape user space to kernel space.

---

## 9. Endpoint Security

Security tools monitor and protect systems from threats.

**Key Functions:**
- Virus detection and alerts
- Protection history logging
- Security alert investigation
- Affected file identification

**Testing:** EICAR test file used to safely verify antivirus detection without real malware.

---

## 10. Command Line Interfaces

### Linux Commands
| Command | Purpose |
|---------|---------|
| `pwd` | Print working directory |
| `ls` | List directory contents |
| `cd` | Change directory |
| `cat` | Display file contents |
| `find` | Search for files |

### Windows Commands
| Command | Purpose |
|---------|---------|
| `dir` | List directory contents |
| `cd` | Change directory |
| `type` | Display file contents |
| `systeminfo` | System information |
| `ipconfig` | Network configuration |

---

## Security Relevance

These fundamentals form the base for:
- Security analysis
- Penetration testing
- System administration
- Incident response
- Vulnerability assessment

Understanding how systems work is essential before attempting to secure or test them.

---

## Tools & Concepts Practiced

- Hardware architecture understanding
- Virtual machine concepts
- Cloud infrastructure basics
- Client-server communication
- OS security principles
- Kernel vs user space separation
- Endpoint security investigation
- CLI system interaction
