# PATH Manipulation

**Platform:** pwn.college  
**Category:** Linux Luminarium

---

## Goal

Understand how PATH affects command execution.

---

## My Approach

1. Examined current PATH
2. Modified PATH to include custom directories
3. Understood command resolution order

---

## Commands Used

```bash
echo $PATH
export PATH=/my/dir:$PATH
which command
```

---

## Concepts Learned

- PATH is searched left to right for commands
- First match is executed
- Adding directory to PATH allows running scripts without full path
- Prepending vs appending to PATH matters

---

## Security Lesson

PATH manipulation is a classic privilege escalation technique. If a privileged script calls commands without full paths, an attacker can hijack execution by placing malicious binaries in a PATH directory.

---

## Next Topics

- SUID binaries with PATH hijacking
- Secure script writing
