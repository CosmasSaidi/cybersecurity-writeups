#!/bin/sh
# ============================================
# new_writeup.sh - Writeup Generator Script
# ============================================
# Author: Cosmas Saidi
# Description: Automatically creates new writeup files from template
# Usage: ./new_writeup.sh
# POSIX-compliant shell script
# ============================================

# Colors for output (POSIX-compatible)
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Script directory (where writeups are stored)
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
BASE_DIR="$(dirname "$SCRIPT_DIR")"

# Print colored output
print_color() {
    color="$1"
    message="$2"
    printf "${color}%s${NC}\n" "$message"
}

# Print banner
print_banner() {
    echo ""
    print_color "$CYAN" "╔══════════════════════════════════════════╗"
    print_color "$CYAN" "║     📝 Writeup Generator Script          ║"
    print_color "$CYAN" "║     pwn.college Learning Journey         ║"
    print_color "$CYAN" "╚══════════════════════════════════════════╝"
    echo ""
}

# Get current date
get_date() {
    date +%Y-%m-%d
}

# Convert title to filename (lowercase, hyphens)
title_to_filename() {
    echo "$1" | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g' | sed 's/[^a-z0-9-]//g'
}

# Select category
select_category() {
    echo ""
    print_color "$YELLOW" "Select a category:"
    echo ""
    echo "  1) linux-luminarium     - Linux fundamentals"
    echo "  2) reverse-engineering  - Binary analysis"
    echo "  3) binary-exploitation  - Pwn challenges"
    echo "  4) web-security         - Web vulnerabilities"
    echo ""
    printf "Enter choice [1-4]: "
    read -r choice

    case "$choice" in
        1) CATEGORY="linux-luminarium" ;;
        2) CATEGORY="reverse-engineering" ;;
        3) CATEGORY="binary-exploitation" ;;
        4) CATEGORY="web-security" ;;
        *)
            print_color "$RED" "Invalid choice. Defaulting to linux-luminarium."
            CATEGORY="linux-luminarium"
            ;;
    esac

    print_color "$GREEN" "✓ Selected: $CATEGORY"
}

# Get writeup title
get_title() {
    echo ""
    printf "Enter writeup title: "
    read -r TITLE

    if [ -z "$TITLE" ]; then
        print_color "$RED" "Error: Title cannot be empty."
        exit 1
    fi

    print_color "$GREEN" "✓ Title: $TITLE"
}

# Get difficulty level
get_difficulty() {
    echo ""
    print_color "$YELLOW" "Select difficulty level:"
    echo ""
    echo "  1) ⭐          - Easy"
    echo "  2) ⭐⭐        - Medium"
    echo "  3) ⭐⭐⭐      - Hard"
    echo "  4) ⭐⭐⭐⭐    - Very Hard"
    echo "  5) ⭐⭐⭐⭐⭐  - Expert"
    echo ""
    printf "Enter choice [1-5]: "
    read -r diff_choice

    case "$diff_choice" in
        1) DIFFICULTY="⭐" ;;
        2) DIFFICULTY="⭐⭐" ;;
        3) DIFFICULTY="⭐⭐⭐" ;;
        4) DIFFICULTY="⭐⭐⭐⭐" ;;
        5) DIFFICULTY="⭐⭐⭐⭐⭐" ;;
        *)
            DIFFICULTY="⭐⭐"
            ;;
    esac

    print_color "$GREEN" "✓ Difficulty: $DIFFICULTY"
}

# Get module name
get_module() {
    echo ""
    printf "Enter module/topic name (e.g., Permissions, Static Analysis): "
    read -r MODULE

    if [ -z "$MODULE" ]; then
        MODULE="General"
    fi

    print_color "$GREEN" "✓ Module: $MODULE"
}

# Create the writeup file
create_writeup() {
    FILENAME=$(title_to_filename "$TITLE")
    FILEPATH="$BASE_DIR/$CATEGORY/${FILENAME}.md"
    CURRENT_DATE=$(get_date)

    # Check if file already exists
    if [ -f "$FILEPATH" ]; then
        print_color "$YELLOW" "Warning: File already exists!"
        printf "Overwrite? [y/N]: "
        read -r overwrite
        case "$overwrite" in
            [Yy]*)
                ;;
            *)
                print_color "$RED" "Aborted."
                exit 1
                ;;
        esac
    fi

    # Create the writeup from template
    cat > "$FILEPATH" << EOF
# 📝 $TITLE

> **Category:** ${CATEGORY}  
> **Module:** ${MODULE}  
> **Date:** ${CURRENT_DATE}  
> **Difficulty:** ${DIFFICULTY}

---

## 📋 Challenge Description

*Brief description of what the challenge presents. Do not include the exact challenge text if it contains hints toward the solution.*

\`\`\`
[General challenge context - what are we given, what's the goal?]
\`\`\`

---

## 🔍 Initial Analysis

*What did I observe when first approaching this challenge?*

### Observations:
- 
- 
- 

### Questions to Answer:
- [ ] Question 1
- [ ] Question 2
- [ ] Question 3

---

## 💡 Approach

### Step 1: [Step Title]

*Description of the first step*

\`\`\`bash
# Command used
command --options arguments
\`\`\`

**Why this works:**
> Explanation of the command and its purpose

### Step 2: [Step Title]

*Description of the second step*

\`\`\`bash
# Command used
command --options arguments
\`\`\`

**Why this works:**
> Explanation of the command and its purpose

---

## 🔧 Commands Used

| Command | Purpose |
|---------|---------|
| \`command1\` | What it does |
| \`command2\` | What it does |

---

## 📚 Concept Learned

### Core Concept: [Concept Name]

*Detailed explanation of the security/Linux/programming concept demonstrated by this challenge.*

**Key Points:**
1. Point one
2. Point two
3. Point three

---

## 🛡️ Security Lesson

### Real-World Application:

*How does this concept apply to real-world security?*

### Defensive Measures:

- **Prevention:** How to prevent this issue
- **Detection:** How to detect this issue
- **Mitigation:** How to reduce impact

---

## 📝 Notes

### Things I Struggled With:
- 

### Key Takeaways:
- 

### Related Topics to Study:
- [ ] Topic 1
- [ ] Topic 2

---

<div align="center">

*This writeup focuses on methodology and learning. No flags or direct solutions included.*

</div>
EOF

    echo ""
    print_color "$GREEN" "═══════════════════════════════════════════"
    print_color "$GREEN" "✓ Writeup created successfully!"
    print_color "$GREEN" "═══════════════════════════════════════════"
    echo ""
    echo "  File: $FILEPATH"
    echo ""
    print_color "$CYAN" "Next steps:"
    echo "  1. Open the file and fill in the details"
    echo "  2. Focus on methodology, not solutions"
    echo "  3. Add commands and explanations"
    echo "  4. Commit when complete"
    echo ""
}

# Main function
main() {
    print_banner
    select_category
    get_title
    get_module
    get_difficulty
    create_writeup
}

# Run the script
main
