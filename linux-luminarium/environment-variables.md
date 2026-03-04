# Environment Variables

**Platform:** pwn.college  
**Category:** Linux Luminarium

---

## Goal

Learn how environment variables work and affect program execution.

---

## My Approach

1. Viewed current variables with `env`
2. Set variables with `export`
3. Understood how PATH affects command lookup

---

## Commands Used

```bash
env
echo $PATH
export MYVAR="value"
printenv
```

---

## Concepts Learned

- Environment variables store system and user settings
- PATH determines where shell looks for commands
- Variables can be temporary or exported to child processes
- `export` makes variable available to subprocesses

---

## Security Lesson

Never store secrets in environment variables visible to other processes. PATH manipulation can be used for privilege escalation.

---

## Next Topics

- PATH hijacking
- Secure variable handling
