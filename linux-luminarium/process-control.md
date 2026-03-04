# Process Control

**Platform:** pwn.college  
**Category:** Linux Luminarium

---

## Goal

Learn to manage processes in Linux.

---

## My Approach

1. Started background processes with `&`
2. Used `fg` to bring to foreground
3. Used `bg` to continue stopped processes
4. Switched users with `su`

---

## Commands Used

```bash
command &
fg
bg
jobs
Ctrl+Z
su username
ps aux
```

---

## Concepts Learned

- `&` runs command in background
- `Ctrl+Z` suspends current process
- `fg` brings background job to foreground
- `bg` continues suspended job in background
- `jobs` lists current shell jobs
- `su` switches user context

---

## Security Lesson

Background processes can persist after logout. Use `nohup` for persistent processes or be aware of orphaned processes.

---

## Next Topics

- Process signals
- Privilege escalation via su/sudo
