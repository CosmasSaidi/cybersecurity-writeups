# 📝 Basic Reversing Workflow: Static Analysis Fundamentals

> **Category:** Reverse Engineering  
> **Module:** Static Analysis  
> **Date:** 2026-03-04  
> **Difficulty:** ⭐⭐

---

## 📋 Challenge Description

This writeup covers the fundamental workflow for approaching an unknown binary using static analysis techniques. The goal is to establish a systematic methodology for gathering information about a binary before execution.

```
Given: An unknown compiled binary
Goal: Gather as much information as possible without executing it
```

---

## 🔍 Initial Analysis

Before diving into complex tools, we should always start with basic reconnaissance to understand what we're dealing with.

### Observations:
- Unknown binaries should first be identified (type, architecture, etc.)
- Strings within binaries can reveal functionality hints
- Disassembly shows the actual machine code structure
- A systematic approach prevents missing important details

### Questions to Answer:
- [x] What type of file is this?
- [x] What architecture is it compiled for?
- [x] Is it stripped or does it have symbols?
- [x] Are there readable strings that hint at functionality?
- [x] What functions/sections does it contain?

---

## 💡 Approach

### Step 1: File Identification with `file`

The `file` command is always the first tool to use on an unknown binary.

```bash
# Basic file identification
file ./unknown_binary

# Example outputs and what they mean:
# ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically linked,
# interpreter /lib64/ld-linux-x86-64.so.2, not stripped

# Breaking down the output:
# ELF          - Executable and Linkable Format (Linux binary)
# 64-bit       - 64-bit architecture
# LSB          - Little endian byte order
# executable   - Can be run directly (vs "shared object" for libraries)
# x86-64       - AMD64/Intel 64 architecture
# dynamically linked - Uses external shared libraries
# not stripped - Contains debugging symbols
```

**Why this works:**
> The `file` command reads magic bytes and headers to identify file types. For ELF binaries, it extracts architecture, linking type, and symbol information from the ELF header.

### Step 2: String Extraction with `strings`

Readable strings in a binary often reveal functionality, error messages, or interesting data.

```bash
# Basic string extraction (default: 4+ character sequences)
strings ./binary

# More thorough search with minimum length of 6
strings -n 6 ./binary

# Include the offset where string was found
strings -t x ./binary

# Search for specific patterns
strings ./binary | grep -i "password\|flag\|secret\|key"

# Count potentially interesting strings
strings ./binary | wc -l
```

**Why this works:**
> `strings` scans for sequences of printable characters, revealing hardcoded messages, function names, library calls, file paths, and other human-readable data compiled into the binary.

### Step 3: Symbol and Section Analysis

Understanding the structure of the binary helps guide further analysis.

```bash
# View ELF header information
readelf -h ./binary

# List sections in the binary
readelf -S ./binary

# List symbols (functions and variables)
readelf -s ./binary

# Alternative: nm for symbol listing
nm ./binary

# Key sections to look for:
# .text    - Executable code
# .data    - Initialized data
# .rodata  - Read-only data (strings, constants)
# .bss     - Uninitialized data
# .plt     - Procedure Linkage Table (dynamic function calls)
# .got     - Global Offset Table
```

**Why this works:**
> ELF sections organize different types of data. The symbol table lists function and variable names (if not stripped), providing a roadmap for understanding the binary's structure.

### Step 4: Basic Disassembly with `objdump`

Viewing the actual machine code reveals the program's logic.

```bash
# Disassemble only the .text section (code)
objdump -d ./binary

# Disassemble with source code interleaved (if available)
objdump -S ./binary

# Show all sections, not just code
objdump -D ./binary

# Focus on a specific function (if symbols exist)
objdump -d ./binary | grep -A 50 "<main>:"

# Show section headers
objdump -h ./binary

# Disassemble with Intel syntax (easier to read)
objdump -d -M intel ./binary
```

**Why this works:**
> `objdump` disassembles machine code into human-readable assembly. Intel syntax (versus AT&T) is often preferred for readability. Looking at specific functions like `main` helps focus analysis.

### Step 5: Putting It All Together

```bash
# Complete initial analysis workflow
echo "=== FILE IDENTIFICATION ===" && file ./binary
echo -e "\n=== STRINGS (first 20) ===" && strings ./binary | head -20
echo -e "\n=== SYMBOLS (functions) ===" && nm ./binary 2>/dev/null | grep " T " | head -20
echo -e "\n=== SECTIONS ===" && readelf -S ./binary 2>/dev/null | head -20
```

**Why this works:**
> A systematic approach ensures no crucial information is missed. This workflow moves from general (file type) to specific (disassembly), building understanding incrementally.

---

## 🔧 Commands Used

| Command | Purpose |
|---------|---------|
| `file` | Identify file type and properties |
| `strings` | Extract readable strings |
| `strings -t x` | Strings with hex offsets |
| `readelf -h` | View ELF header |
| `readelf -S` | List sections |
| `readelf -s` | List symbols |
| `nm` | Display symbol table |
| `objdump -d` | Disassemble code |
| `objdump -M intel` | Disassemble with Intel syntax |

### Command Breakdown:

```bash
# objdump Intel syntax disassembly explained
objdump -d -M intel ./binary
# -d       : Disassemble executable sections
# -M intel : Use Intel syntax (dest, src) vs AT&T (src, dest)

# Common assembly patterns to recognize:
# push rbp / mov rbp,rsp  : Function prologue
# pop rbp / ret           : Function epilogue
# call <address>          : Function call
# mov eax, 0 / ret        : Return 0
```

---

## 📚 Concept Learned

### Core Concept: Static Analysis Methodology

Static analysis examines a program without executing it, focusing on its structure, code, and data.

**Key Points:**
1. Always start with file identification
2. Strings reveal embedded information
3. Symbols and sections show program organization
4. Disassembly reveals actual behavior
5. Systematic approach prevents oversight

### Technical Details:

```
Static Analysis Workflow:
┌─────────────────────────────────────────────┐
│           Unknown Binary                     │
└─────────────────┬───────────────────────────┘
                  │
                  ▼
┌─────────────────────────────────────────────┐
│  1. file       → Type, arch, stripped?      │
├─────────────────────────────────────────────┤
│  2. strings    → Embedded text data         │
├─────────────────────────────────────────────┤
│  3. readelf    → Headers, sections, symbols │
├─────────────────────────────────────────────┤
│  4. objdump    → Disassembly                │
├─────────────────────────────────────────────┤
│  5. ghidra     → Decompilation (advanced)   │
└─────────────────────────────────────────────┘
```

### Why Static Before Dynamic:

| Static Analysis | Dynamic Analysis |
|-----------------|------------------|
| Safe (no execution) | Requires execution |
| See all code paths | Only executed paths |
| No runtime dependencies | Needs proper environment |
| Can be slower for complex code | Real-time behavior |

---

## 🛡️ Security Lesson

### Real-World Application:

Static analysis is essential for:
- Malware analysis (understanding malicious code safely)
- Vulnerability research (finding bugs in source-less software)
- Security auditing (reviewing binary-only components)
- Incident response (analyzing suspicious files)

### Defensive Measures:

- **Prevention:** Code review before compilation
- **Detection:** Static analysis tools for vulnerability patterns
- **Mitigation:** Understanding attack techniques to build defenses

### Common Mistakes:

1. **Skipping file identification** - Might miss architecture mismatches or packed binaries
2. **Not checking if stripped** - Changes analysis approach significantly
3. **Ignoring strings** - Often contains valuable hints and hardcoded data
4. **Jumping straight to disassembly** - Missing context from higher-level analysis

---

## 📝 Notes

### Things I Struggled With:
- Initially overwhelmed by objdump output; learning to filter for relevant sections helped

### Key Takeaways:
- A systematic workflow is crucial for efficient analysis
- Basic tools (file, strings, objdump) reveal significant information
- Symbols make analysis much easier; stripped binaries require more effort
- Intel syntax is more intuitive for most analysts

### Related Topics to Study:
- [ ] Dynamic analysis with GDB
- [ ] Ghidra for decompilation
- [ ] Recognizing common code patterns
- [ ] Understanding calling conventions

### Resources:
- [Practical Binary Analysis (book)](https://practicalbinaryanalysis.com/)
- [Reverse Engineering for Beginners](https://beginners.re/)
- [objdump man page](https://man7.org/linux/man-pages/man1/objdump.1.html)

---

## 🔗 Related Writeups

- [Dynamic Analysis with GDB](./dynamic-gdb-basics.md) *(coming soon)*
- [Ghidra Workflow](./ghidra-basics.md) *(coming soon)*

---

<div align="center">

*This writeup focuses on methodology and learning. No flags or direct solutions included.*

</div>
