# Web Fundamentals - Talking Web

**Platform:** pwn.college  
**Category:** Talking Web  
**Date:** March 7, 2026

---

## Goal

Understand HTTP communication, manual request crafting, and how clients interact with web servers.

---

## HTTP Basics

HTTP (HyperText Transfer Protocol) is the protocol for communication between web clients and servers.

### Request Structure

```
GET /path HTTP/1.1
Host: example.com

```

| Part | Meaning |
|------|---------|
| GET | HTTP method |
| /path | Resource being requested |
| HTTP/1.1 | Protocol version |
| Host | Target domain / virtual host |

**Important:** An empty line must end every HTTP request.

---

## Sending Raw HTTP Requests with Netcat

Netcat allows sending raw TCP traffic to manually craft HTTP requests.

```bash
nc challenge.localhost 80
```

Then type:
```
GET / HTTP/1.1
Host: challenge.localhost

```

**Important rules:**
- Headers use `:` not `=`
- Incorrect: `Host=example.com`
- Correct: `Host: example.com`
- A blank line must be sent after headers

---

## HTTP Paths and Routing

Web servers respond to specific routes.

Example server code:
```python
@app.route("/pwn", methods=["GET"])
```

Request must match:
```
GET /pwn HTTP/1.1
Host: challenge.localhost

```

If path is wrong: `404 Not Found`

---

## Using curl for HTTP Requests

### Basic request
```bash
curl http://challenge.localhost/pwn
```

### Custom headers
```bash
curl -H "Host: example.com" http://challenge.localhost/pwn
```

### Debugging (shows full request/response)
```bash
curl -v http://challenge.localhost/pwn
```

The `-v` flag prints:
- The HTTP request
- The HTTP response
- All headers

---

## Using Python requests

### Basic request
```python
import requests

r = requests.get("http://challenge.localhost")
print(r.text)
```

### Sending headers
```python
import requests

headers = {"Host": "www.w3challs.com"}
r = requests.get("http://challenge.localhost/pwn", headers=headers)
print(r.text)
```

### Common error
```python
# Wrong - variable name mismatch
header = {"Host": "example.com"}
requests.get(..., headers=headers)  # NameError!

# Correct
headers = {"Host": "example.com"}
requests.get(..., headers=headers)
```

---

## The Host Header

The Host header tells the server which domain the client wants.

Many websites share the same IP address:
```
IP: 10.10.10.10

Hosted domains:
- admin.company.com
- api.company.com
- dev.company.com
```

The server uses the Host header to route to the correct website.

---

## Virtual Host Routing

Servers can host multiple domains on one machine.

Example Flask config:
```python
app.config["SERVER_NAME"] = "www.w3challs.com:80"
```

Request must match both path AND host:
```
GET /pwn HTTP/1.1
Host: www.w3challs.com

```

Wrong host = `404 Not Found`

---

## Extracting Data from HTTP Headers

Sometimes data is in response headers, not body.

Server code:
```python
response.headers["X-Flag"] = open("/flag").read().strip()
```

Response:
```
HTTP/1.1 200 OK
X-Flag: pwn.college{...flag...}
```

Use `curl -v` or check `r.headers` in Python to see response headers.

---

## Tools Comparison

| Tool | Purpose |
|------|---------|
| nc (netcat) | Send raw HTTP requests manually |
| curl | Quick HTTP interactions, header manipulation |
| python requests | Scripting and automating HTTP interactions |

---

## Real-World Application

The Host header is commonly abused during virtual host enumeration:

```bash
ffuf -H "Host: FUZZ.target.com" -u http://10.10.10.10
```

Goal: Discover hidden subdomains:
- admin.target.com
- dev.target.com
- internal.target.com

Used in:
- HackTheBox labs
- TryHackMe labs
- Bug bounty programs
- Real penetration tests

---

## Commands Used

```bash
# Netcat raw HTTP
nc challenge.localhost 80

# Curl requests
curl http://challenge.localhost/pwn
curl -H "Host: example.com" http://url
curl -v http://url

# Python
python3
import requests
```

---

## Concepts Learned

- HTTP request structure (method, path, version, headers)
- Manual HTTP request crafting with netcat
- Path-based routing
- Host header behavior
- Virtual host routing
- Using curl for HTTP interaction
- Using Python requests for automation
- Extracting data from HTTP response headers
- Debugging malformed HTTP requests

---

## Security Lesson

Understanding HTTP at the raw level is essential for web exploitation. The Host header can be manipulated to access hidden virtual hosts, and response headers often contain sensitive information that isn't visible in the page body.

---

*Methodology focus - no flags*
