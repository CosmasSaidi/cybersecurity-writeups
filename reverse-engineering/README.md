# 🔍 Reverse Engineering

> Understanding programs from the inside out

---

## 📚 Overview

This section covers reverse engineering fundamentals, focusing on analyzing binaries to understand their behavior without access to source code.

---

## 📁 Topics Covered

### Static Analysis
- File identification and reconnaissance
- String extraction
- Disassembly with objdump
- Decompilation with Ghidra

### Dynamic Analysis
- Debugging with GDB
- Tracing with strace/ltrace
- Breakpoints and stepping
- Memory inspection

### Assembly Language
- x86/x64 instruction basics
- Calling conventions
- Stack frames
- Common patterns

---

## 📝 Writeups

| Writeup | Concept | Difficulty |
|---------|---------|------------|
| [basic-reversing-workflow.md](./basic-reversing-workflow.md) | Static Analysis Basics | ⭐⭐ |
| *More coming...* | | |

---

## 🛠️ Essential Tools

```bash
# File identification
file <binary>

# String extraction
strings <binary>

# Disassembly
objdump -d <binary>

# Debugging
gdb ./<binary>

# System calls
strace ./<binary>

# Library calls
ltrace ./<binary>
```

---

## 🎯 Learning Objectives

After completing this section, you should understand:

- [x] How to identify binary file types
- [x] Basic static analysis workflow
- [ ] Reading x86/x64 assembly
- [ ] Dynamic analysis techniques
- [ ] Recognizing common code patterns

---

<div align="center">

[← Back to Main](../README.md)

</div>
