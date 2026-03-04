# Shell Scripting Basics

**Platform:** pwn.college  
**Category:** Linux Luminarium

---

## Goal

Learn basic shell scripting for automation.

---

## My Approach

1. Created scripts with shebang `#!/bin/bash`
2. Made scripts executable with `chmod +x`
3. Used command substitution

---

## Commands Used

```bash
#!/bin/bash
echo "Hello"
VAR=$(command)
chmod +x script.sh
./script.sh
```

---

## Concepts Learned

- Scripts need shebang line to specify interpreter
- Command substitution: `$(command)` or backticks
- Scripts need execute permission to run
- Variables don't need $ when assigning, need $ when reading

---

## Security Lesson

Always validate input in scripts. Avoid running untrusted scripts with elevated privileges.

---

## Next Topics

- Conditionals and loops
- Input handling
