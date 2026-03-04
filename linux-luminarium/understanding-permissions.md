# 📝 Understanding Linux File Permissions

> **Category:** Linux Luminarium  
> **Module:** Permissions  
> **Date:** 2026-03-04  
> **Difficulty:** ⭐⭐

---

## 📋 Challenge Description

This challenge involves understanding how Linux file permissions control access to files and directories. The goal is to understand the permission model well enough to interact with files that have specific permission requirements.

```
Given: A system with various files having different permission settings
Goal: Understand how to read, modify, and work within permission constraints
```

---

## 🔍 Initial Analysis

When first approaching any Linux permissions challenge, reconnaissance is key.

### Observations:
- Files in Linux have three permission types: read (r), write (w), execute (x)
- Permissions are set for three entities: user (owner), group, others
- The `ls -la` command reveals detailed permission information
- Permissions are displayed as a 10-character string (e.g., `-rwxr-xr-x`)

### Questions to Answer:
- [x] What are the current permissions on target files?
- [x] Who owns the file and what group is it in?
- [x] What permissions do I have based on my user context?

---

## 💡 Approach

### Step 1: Enumerate File Permissions

The first step is always to understand what we're working with.

```bash
# List all files with detailed permissions
ls -la

# Example output breakdown:
# -rwxr-xr-x 1 root root 12345 Mar 04 10:00 program
# │└┬┘└┬┘└┬┘ │  │    │
# │ │  │  │  │  │    └── Group owner
# │ │  │  │  │  └─────── User owner
# │ │  │  │  └────────── Number of hard links
# │ │  │  └───────────── Others permissions
# │ │  └──────────────── Group permissions
# │ └─────────────────── User permissions
# └───────────────────── File type (- = file, d = directory)
```

**Why this works:**
> The `ls -la` command shows all files (including hidden ones with `-a`) in long format (`-l`), revealing ownership and permission details essential for understanding access control.

### Step 2: Understanding Permission Bits

Each permission has a numeric value:
- Read (r) = 4
- Write (w) = 2
- Execute (x) = 1

```bash
# Check current user
whoami

# Check groups current user belongs to
groups

# Check file permissions in octal
stat -c "%a %n" filename
```

**Why this works:**
> Understanding your user context helps determine which permission set (user, group, or other) applies to you when accessing a file.

### Step 3: Modifying Permissions (When Allowed)

```bash
# Add execute permission for owner
chmod u+x filename

# Set specific permissions using octal
chmod 755 filename  # rwxr-xr-x

# Recursive permission change
chmod -R 644 directory/
```

**Why this works:**
> The `chmod` command modifies file mode bits. Symbolic notation (u+x) is intuitive, while octal notation (755) is precise and commonly used in scripts.

---

## 🔧 Commands Used

| Command | Purpose |
|---------|---------|
| `ls -la` | List files with detailed permissions |
| `whoami` | Display current username |
| `groups` | Show group memberships |
| `stat filename` | Display detailed file information |
| `chmod mode file` | Change file permissions |
| `chown user:group file` | Change file ownership |

### Command Breakdown:

```bash
# Permission notation explained
chmod [ugoa][+-=][rwxXst] filename
# u = user (owner)
# g = group
# o = others
# a = all (u+g+o)
# + = add permission
# - = remove permission
# = = set exact permission
```

---

## 📚 Concept Learned

### Core Concept: The Unix Permission Model

Linux uses a discretionary access control (DAC) system where file owners control access through permission bits.

**Key Points:**
1. Every file has an owner (user) and a group
2. Three permission sets exist: user, group, others
3. Three basic permissions: read, write, execute
4. Special permissions exist: SUID, SGID, sticky bit

### Technical Details:

```
Permission Bit Breakdown:
┌─────────┬─────────┬─────────┐
│  User   │  Group  │ Others  │
├─────────┼─────────┼─────────┤
│  r w x  │  r w x  │  r w x  │
│  4 2 1  │  4 2 1  │  4 2 1  │
└─────────┴─────────┴─────────┘
          Example: 755
          User:  7 (4+2+1) = rwx
          Group: 5 (4+0+1) = r-x
          Other: 5 (4+0+1) = r-x
```

### Directory vs File Permissions:

| Permission | On Files | On Directories |
|------------|----------|----------------|
| Read (r) | View contents | List contents |
| Write (w) | Modify contents | Create/delete files |
| Execute (x) | Run as program | Enter directory |

---

## 🛡️ Security Lesson

### Real-World Application:

File permissions are the first line of defense in Linux security. Misconfigured permissions are a common vulnerability that attackers exploit.

### Defensive Measures:

- **Prevention:** Apply principle of least privilege - give minimum necessary permissions
- **Detection:** Regular audits with `find / -perm -4000 2>/dev/null` for SUID files
- **Mitigation:** Use access control lists (ACLs) for granular control

### Common Mistakes:

1. **Using 777 permissions** - Makes files world-writable, allowing anyone to modify
2. **Ignoring SUID/SGID bits** - Can lead to privilege escalation vulnerabilities
3. **Wrong ownership on sensitive files** - Config files should be owned by appropriate users

---

## 📝 Notes

### Things I Struggled With:
- Initially confused about which permission set applies when user is in the file's group

### Key Takeaways:
- Linux checks permissions in order: user → group → others (stops at first match)
- Root (UID 0) bypasses most permission checks
- Execute permission on directories means ability to access/traverse, not execute

### Related Topics to Study:
- [ ] Access Control Lists (ACLs)
- [ ] Special permissions (SUID, SGID, sticky bit)
- [ ] umask and default permissions

### Resources:
- [Linux File Permissions Explained](https://www.linux.com/training-tutorials/understanding-linux-file-permissions/)
- [chmod man page](https://man7.org/linux/man-pages/man1/chmod.1.html)

---

## 🔗 Related Writeups

- [PATH Vulnerability](./path-vulnerability.md)
- [SUID Exploitation Concepts](../binary-exploitation/suid-basics.md)

---

<div align="center">

*This writeup focuses on methodology and learning. No flags or direct solutions included.*

</div>
