#!/usr/bin/env bash
set -euo pipefail

# create_readmes.sh
# Run this from the repo root (or just run: bash create_readmes.sh)
# It will create README.md files for the Websites/ subfolders, then add/commit/push.

BASE="$(cd "$(dirname "$0")" && pwd)"
cd "$BASE"

echo "Running in: $BASE"

# Create folders (safe if they already exist)
mkdir -p "Websites/AI Tools/ChatGPT"
mkdir -p "Websites/AI Tools/NotebookLM"
mkdir -p "Websites/AI Tools/Grammarly"
mkdir -p "Websites/AI Tools/GPTzero"

mkdir -p "Websites/Study Tools/Khan Academy"
mkdir -p "Websites/Study Tools/Quizlet"
mkdir -p "Websites/Study Tools/Purdue Owl"
mkdir -p "Websites/Study Tools/JSTOR"
mkdir -p "Websites/Study Tools/MyBib"

mkdir -p "Websites/Darksites/Project Gutenberg"
mkdir -p "Websites/Darksites/Sci-Hub"
mkdir -p "Websites/Darksites/Annes Archive"
mkdir -p "Websites/Darksites/The Pirate Bay"

echo "Creating README files..."

# Helper to write multi-line content safely
writefile() {
  local dest="$1"
  shift
  cat > "$dest" <<'EOF'
'"$@"'
EOF
}

# Use here-docs directly for each file:
cat > "Websites/AI Tools/ChatGPT/README.md" <<'EOF'
# ChatGPT

**What it is**
ChatGPT is a conversational AI by OpenAI that helps explain topics, draft text, and generate examples.

**What you need**
- Account at https://chat.openai.com (free tier available).
- Modern browser.

**How to use for school (legit)**
- Ask for plain-language explanations, step-by-step walkthroughs, or example problems.
- Use it to brainstorm, outline essays, or generate practice questions — then verify facts and cite primary sources.

**How it could be misused (cheating)**
- Submitting AI-generated work as your own without understanding it is academic dishonesty. Use outputs as study aids only.

**Links**
https://chat.openai.com
EOF

cat > "Websites/AI Tools/NotebookLM/README.md" <<'EOF'
# NotebookLM

**What it is**
NotebookLM (Google) is an AI notebook/research assistant for summarizing uploaded documents and creating study prompts.

**What you need**
- Google account and access to NotebookLM (availability may vary).
- PDFs or notes to upload.

**How to use for school (legit)**
- Upload lecture notes or readings, ask for concise summaries, Q&A, and study prompts.
- Use outlines to plan study sessions and identify gaps.

**How it could be misused (cheating)**
- Copying generated answers directly into assignments is dishonest. Use outputs to learn and verify with sources.

**Links**
(Search NotebookLM or Google Research pages for access details)
EOF

cat > "Websites/AI Tools/Grammarly/README.md" <<'EOF'
# Grammarly

**What it is**
Grammarly checks grammar, clarity, tone, and style for your writing.

**What you need**
- Free or paid account (web app or browser extension).
- Text to review.

**How to use for school (legit)**
- Proofread essays, apply suggestions, and learn grammar improvements.
- Double-check that meaning and citations remain yours.

**How it could be misused (cheating)**
- Over-reliance on corrections without learning can weaken your own writing skills.

**Links**
https://grammarly.com
EOF

cat > "Websites/AI Tools/GPTzero/README.md" <<'EOF'
# GPTZero

**What it is**
GPTZero attempts to detect AI-generated text and is used as an indicator of likely AI writing.

**What you need**
- Access at https://gptzero.me (availability may change).
- Text to analyze.

**How to use for school (legit)**
- Instructors can use it as one signal when checking originality.
- Students can self-check drafts to ensure authenticity.

**How it could be misused (cheating)**
- Relying solely on its score to accuse someone is risky—false positives/negatives happen.

**Links**
https://gptzero.me
EOF

cat > "Websites/Study Tools/Khan Academy/README.md" <<'EOF'
# Khan Academy

**What it is**
Free lessons, exercises, and videos across many school subjects.

**What you need**
- Optional free account at https://khanacademy.org
- Internet connection.

**How to use for school (legit)**
- Watch lessons, do practice exercises, and follow mastery paths to learn topics.

**How it could be misused (cheating)**
- Using answer keys without attempting problems defeats the learning purpose.

**Links**
https://khanacademy.org
EOF

cat > "Websites/Study Tools/Quizlet/README.md" <<'EOF'
# Quizlet

**What it is**
Create and study flashcards, practice tests, and games.

**What you need**
- Free or paid account at https://quizlet.com

**How to use for school (legit)**
- Make flashcards, use spaced repetition, and test yourself for memorization.

**How it could be misused (cheating)**
- Sharing or using sets that contain stolen exam answers is unethical.

**Links**
https://quizlet.com
EOF

cat > "Websites/Study Tools/Purdue Owl/README.md" <<'EOF'
# Purdue Owl

**What it is**
Purdue Online Writing Lab — guidance for citations, formatting, and academic writing.

**What you need**
- Web access at https://owl.purdue.edu

**How to use for school (legit)**
- Use for citation examples (APA, MLA, Chicago), paper formatting, and writing tips.

**How it could be misused (cheating)**
- N/A — it's an instructional resource; ignoring proper citation is the misuse.

**Links**
https://owl.purdue.edu
EOF

cat > "Websites/Study Tools/JSTOR/README.md" <<'EOF'
# JSTOR

**What it is**
Digital library of academic journals and books (institutional access often required).

**What you need**
- Access via your library/institution or limited free account at https://jstor.org

**How to use for school (legit)**
- Use for primary academic sources, literature reviews, and proper citations.

**How it could be misused (cheating)**
- Copying text without attribution is plagiarism.

**Links**
https://jstor.org
EOF

cat > "Websites/Study Tools/MyBib/README.md" <<'EOF'
# MyBib

**What it is**
Free bibliography & citation generator supporting multiple styles.

**What you need**
- Web access at https://mybib.com

**How to use for school (legit)**
- Generate citations, export bibliographies, and verify formatting against style guides.

**How it could be misused (cheating)**
- Blindly trusting auto-generated citations without checking them can introduce errors.

**Links**
https://mybib.com
EOF

cat > "Websites/Darksites/Project Gutenberg/README.md" <<'EOF'
# Project Gutenberg

**What it is**
A large collection of public-domain ebooks (classic literature, historical texts).

**What you need**
- Web browser: https://www.gutenberg.org/

**How to use for school (legit)**
- Excellent source for public-domain primary texts and historical materials.

**Legal / Ethical note**
- Generally legal for public-domain works. No special precautions beyond normal web safety.

**Links**
https://www.gutenberg.org/
EOF

cat > "Websites/Darksites/Sci-Hub/README.md" <<'EOF'
# Sci-Hub

**What it is**
A site that provides access to academic papers (often bypassing paywalls).

**What you need**
- Note: Sci-Hub domain names change frequently.

**How to use for school (legit)**
- Some researchers use it to access papers when legal access is unavailable — prefer legal channels first (library, author preprints).

**LEGAL & ETHICAL DISCLAIMER (READ CAREFULLY)**
- Sci-Hub often distributes copyrighted content without publisher permission. Accessing it may violate laws and institutional policies where you are. Use at your own risk and prefer legal alternatives.

**Privacy / safety note**
- If you are worried about privacy, consult institutional policies. For privacy tools (example): ProtonVPN — https://protonvpn.com (not an endorsement).

**Links**
(Domains change; exercise caution)
EOF

cat > "Websites/Darksites/Annes Archive/README.md" <<'EOF'
# Annes Archive (Anna's Archive)

**What it is**
Anna's Archive aggregates a large collection of books and materials (some content may be non-authorized).

**What you need**
- Web browser; availability and mirrors change.

**How to use for school (legit)**
- May find hard-to-access materials, but always prefer legal and ethical access (libraries, authors, or publisher permission).

**LEGAL & ETHICAL DISCLAIMER**
- Some content can be copyrighted and hosted without permission. Downloading/distributing copyrighted works can have legal consequences.

**Privacy / safety note**
- If privacy is a concern, consult legal guidance and consider official library services.

**Links**
https://annas-archive.li/  (mirror domains may vary)
EOF

cat > "Websites/Darksites/The Pirate Bay/README.md" <<'EOF'
# The Pirate Bay

**What it is**
A torrent index site that provides access to torrents and magnet links (many items are copyrighted).

**What you need**
- Extreme caution: many files are copyright-protected.

**LEGAL & ETHICAL DISCLAIMER**
- Downloading or sharing copyrighted material without permission is illegal in many countries. This repository does NOT endorse illegal activity.

**Safety note**
- Do not use torrent sites to obtain copyrighted content. Prefer legal sources and consult institutional rules.

**Links**
https://thepiratebay.org  (domain status changes; many ISPs block it)
EOF

cat > "Websites/TEMPLATE_README.md" <<'EOF'
# TEMPLATE: Tool README

**Tool name:** <<Replace>>

**Short description:** One or two lines describing what it is.

**What you need**
- Account / subscription
- Browser / extensions / dependencies

**How to use for school (legit)**
1. Short step-by-step legitimate uses.
2. Tips on citing and verifying outputs.

**How it could be misused (cheating)**
- Brief note about misuse and reminder to follow honor code.

**Links**
- Official: https://example.com
EOF

cat > "Websites/README.md" <<'EOF'
# Websites (Extra Tools)

Organized web tools for study and research.

## Categories
- **AI Tools**
- **Study Tools**
- **Darksites** — read disclaimers carefully. Prefer legal channels.

## Add a new tool
Copy TEMPLATE_README.md into the appropriate category folder and edit it.

## Disclaimer
This repo is educational. Respect copyright and institutional policies. We do not endorse illegal activity.
EOF

echo "Files created. Checking git status..."

# Add and commit if there are new or changed files
if [ -n "$(git status --porcelain)" ]; then
  git add "Websites" -A
  git commit -m "Add README.md files for Websites tools and TEMPLATE"
  echo "Attempting to push..."
  if git push -u origin main; then
    echo "Push succeeded."
  else
    echo "Push failed. If authentication failed, try using GitHub Desktop or run the push manually and authenticate (use PAT if prompted)."
    exit 2
  fi
else
  echo "Nothing to commit (working tree clean)."
fi

echo "Done."
