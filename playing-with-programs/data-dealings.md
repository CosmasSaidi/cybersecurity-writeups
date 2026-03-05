# Data Dealings

**Platform:** pwn.college  
**Module:** Playing with Programs – Data Dealings  
**Date:** March 5, 2026

---

## Concepts Learned

- UTF-8 encoding and byte representation
- Encoding vs encryption (encoding is reversible, not secure)
- Base64 and hex encoding/decoding
- Obfuscation ≠ security
- Reading program logic to reverse transformations
- Handling raw bytes in CLI

---

## Commands Used

```bash
# Base64
echo -n "hello" | base64          # Encode
echo "aGVsbG8=" | base64 -d       # Decode

# Hex
echo -n "hello" | xxd -p          # Encode
echo "68656c6c6f" | xxd -r -p     # Decode
```

```python
# Python raw bytes
bytes.fromhex("68656c6c6f")

import sys
sys.stdout.buffer.write(data)

import base64
base64.b64decode("aGVsbG8=")
```

---

## Security Takeaways

1. Encoding is NOT encryption
2. Read the code – understand transformations
3. Programs compare bytes, not characters
4. Obfuscation provides no real security

---

*Methodology focus – no flags*
