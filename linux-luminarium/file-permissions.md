# File Permissions

**Platform:** pwn.college  
**Category:** Linux Luminarium

---

## Goal

Understand Linux file permissions and how to modify them.

---

## My Approach

1. Used `ls -la` to view file permissions
2. Identified permission bits (rwx for user, group, others)
3. Used `chmod` to change permissions

---

## Commands Used

```bash
ls -la
chmod 755 filename
chmod +x script.sh
```

---

## Concepts Learned

- Permissions are split into: owner, group, others
- r=4, w=2, x=1 (octal notation)
- `chmod` changes file permissions
- Execute permission needed to run scripts

---

## Security Lesson

Misconfigured permissions can expose sensitive files. Always use minimum required permissions.

---

## Next Topics

- SUID/SGID bits
- File ownership with chown
