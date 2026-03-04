# Piping Commands

**Platform:** pwn.college  
**Category:** Linux Luminarium

---

## Goal

Learn to chain commands using pipes.

---

## My Approach

1. Used `|` to send output of one command to another
2. Combined with text processing tools
3. Built command pipelines

---

## Commands Used

```bash
cat file | head
ls | grep pattern
command1 | command2 | command3
cat file | tr 'a' 'b'
echo "text" | head -c 5
```

---

## Concepts Learned

- `|` sends stdout of left command to stdin of right command
- Pipes allow chaining multiple commands
- `head` shows first lines/bytes
- `tr` translates characters
- `cat` outputs file contents

---

## Security Lesson

Be careful piping sensitive data - intermediate commands may log or expose information.

---

## Next Topics

- Redirection (>, >>, <)
- Named pipes
