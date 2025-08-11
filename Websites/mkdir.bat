@echo off
REM ---------------------------------------------------------
REM create_readmes.bat
REM Run this inside:
REM C:\Users\Colse\OneDrive\Documents\GitHub\Extra-Tools\Websites\
REM ---------------------------------------------------------

REM Ensure script runs from the folder it's located in
pushd "%~dp0"

REM Create category and tool folders
md "AI Tools\ChatGPT" 2>nul
md "AI Tools\NotebookLM" 2>nul
md "AI Tools\Grammarly" 2>nul
md "AI Tools\GPTzero" 2>nul

md "Study Tools\Khan Academy" 2>nul
md "Study Tools\Quizlet" 2>nul
md "Study Tools\Purdue Owl" 2>nul
md "Study Tools\JSTOR" 2>nul
md "Study Tools\MyBib" 2>nul

md "Darksites\Project Gutenberg" 2>nul
md "Darksites\Sci-Hub" 2>nul
md "Darksites\Annes Archive" 2>nul
md "Darksites\The Pirate Bay" 2>nul

REM Create Template README for adding new tools later
powershell -NoProfile -Command ^
$txt=@'\
# TEMPLATE: Tool README

**Tool name:** <<Replace with tool name>>

**Short description:** One or two lines describing what it is.

**What you need**
- Account / subscription: (e.g., free / paid)
- Recommended browser / extensions
- Any other dependencies

**How to use for school (legit use)**
1. Step-by-step, short bullets for research, study, citations, etc.
2. Example: "Use to draft study notes, then verify with primary sources."

**How it could be misused (cheating)**
- Short description of ways it might be used to cheat and why that is unethical.
- Reminder: always follow your institution's honor code.

**Links & resources**
- Official site: https://example.com

'@; Set-Content -Path 'TEMPLATE_README.md' -Value $txt -Encoding UTF8

REM ---------- AI Tools READMEs ----------
powershell -NoProfile -Command ^
$txt=@'\
# ChatGPT

**What it is**
ChatGPT is an advanced conversational AI by OpenAI that can generate text, summarize, explain concepts, and help draft content.

**What you need**
- Account at https://chat.openai.com (free tier exists, paid for more features)
- Modern browser (Chrome/Edge/Firefox)

**How to use for school (legit)**
- Ask for summaries of difficult topics, step-by-step explanations, and example problems.
- Use it to brainstorm outlines, improve phrasing, or practice explanations in plain language.
- Always verify facts and add citations from primary sources before submitting.

**How it could be misused (cheating)**
- Having ChatGPT write entire assignments and submitting them as your own is academic dishonesty.
- Use as a study aid, not a replacement for your own learning.

**Links**
- https://chat.openai.com
'@; Set-Content -Path 'AI Tools\ChatGPT\README.md' -Value $txt -Encoding UTF8

powershell -NoProfile -Command ^
$txt=@'\
# NotebookLM

**What it is**
NotebookLM (Google) is an AI-powered notebook/research assistant that helps organize notes and summarize documents.

**What you need**
- Google account and access to NotebookLM (availability may vary).
- PDFs or notes to upload for summarization.

**How to use for school (legit)**
- Upload lecture notes or readings and ask for concise summaries, Q&A, or study prompts.
- Use the generated outlines to plan study sessions and to find areas needing review.

**How it could be misused (cheating)**
- Having NotebookLM generate answers verbatim for assignments without understanding them is dishonest.
- Use outputs as study guidance and always cross-check original sources.

**Links**
- Search NotebookLM or Google Research pages for access info.
'@; Set-Content -Path 'AI Tools\NotebookLM\README.md' -Value $txt -Encoding UTF8

powershell -NoProfile -Command ^
$txt=@'\
# Grammarly

**What it is**
Grammarly is a writing assistant that checks grammar, clarity, tone, and style.

**What you need**
- Free or paid Grammarly account (browser extension or web app).
- Text you want to check.

**How to use for school (legit)**
- Use to proofread essays, correct grammar, and improve clarity.
- Apply suggested edits and ensure citations/ideas are still your own.

**How it could be misused (cheating)**
- Grammarly cannot create original content for you, but over-reliance on style suggestions without learning can weaken your writing skills.

**Links**
- https://grammarly.com
'@; Set-Content -Path 'AI Tools\Grammarly\README.md' -Value $txt -Encoding UTF8

powershell -NoProfile -Command ^
$txt=@'\
# GPTzero

**What it is**
GPTZero is a tool for detecting whether text appears to be AI-generated.

**What you need**
- Account at https://gptzero.me (details may change)
- The text you want to analyze.

**How to use for school (legit)**
- Educators can use it to flag potential AI-generated submissions.
- Students can self-check their drafts to ensure authenticity.

**How it could be misused (cheating)**
- Treat results as one indicator — false positives/negatives occur. Using it to unfairly accuse someone without context is risky.

**Links**
- https://gptzero.me
'@; Set-Content -Path 'AI Tools\GPTzero\README.md' -Value $txt -Encoding UTF8

REM ---------- Study Tools READMEs ----------
powershell -NoProfile -Command ^
$txt=@'\
# Khan Academy

**What it is**
Khan Academy offers free lessons, exercises, and videos across many subjects.

**What you need**
- Free account (optional) at https://khanacademy.org
- Internet connection and browser.

**How to use for school (legit)**
- Use video lessons to learn concepts step-by-step and practice exercises for mastery.
- Great for catching up on math, science, and AP subjects.

**How it could be misused (cheating)**
- Not typically a cheating tool — it supports learning. Using worked answers without effort defeats its purpose.

**Links**
- https://khanacademy.org
'@; Set-Content -Path 'Study Tools\Khan Academy\README.md' -Value $txt -Encoding UTF8

powershell -NoProfile -Command ^
$txt=@'\
# Quizlet

**What it is**
Quizlet lets you create and study flashcards, practice tests, and games.

**What you need**
- Free or paid Quizlet account at https://quizlet.com

**How to use for school (legit)**
- Create flashcards for key terms, use spaced repetition, and test yourself.
- Share study sets with classmates for group study.

**How it could be misused (cheating)**
- Sharing answers to tests or using sets that contain stolen exam content is unethical.

**Links**
- https://quizlet.com
'@; Set-Content -Path 'Study Tools\Quizlet\README.md' -Value $txt -Encoding UTF8

powershell -NoProfile -Command ^
$txt=@'\
# Purdue Owl

**What it is**
Purdue Online Writing Lab (OWL) is a comprehensive resource for writing, citation styles (APA, MLA), and research guidance.

**What you need**
- Web access: https://owl.purdue.edu

**How to use for school (legit)**
- Use for citation examples, formatting papers, and improving academic writing.
- Follow OWL guidance to avoid plagiarism.

**How it could be misused (cheating)**
- N/A — this is an ethical instructional resource; misuse would be ignoring proper citations.

**Links**
- https://owl.purdue.edu
'@; Set-Content -Path 'Study Tools\Purdue Owl\README.md' -Value $txt -Encoding UTF8

powershell -NoProfile -Command ^
$txt=@'\
# JSTOR

**What it is**
JSTOR is a digital library of academic journals, books, and primary sources (institutional access often required).

**What you need**
- Access through your library or institution, or free limited access accounts at https://jstor.org

**How to use for school (legit)**
- Use JSTOR for primary academic sources, literature reviews, and citations.
- Cite properly and read original research critically.

**How it could be misused (cheating)**
- Copying sections of papers without attribution is plagiarism.

**Links**
- https://jstor.org
'@; Set-Content -Path 'Study Tools\JSTOR\README.md' -Value $txt -Encoding UTF8

powershell -NoProfile -Command ^
$txt=@'\
# MyBib

**What it is**
MyBib is a free bibliography and citation generator that formats references in multiple styles.

**What you need**
- Web access: https://mybib.com

**How to use for school (legit)**
- Generate citations and export bibliographies for assignments. Double-check formatting against style guides.

**How it could be misused (cheating)**
- Incorrectly generated citations are still your responsibility. Do not rely blindly.

**Links**
- https://mybib.com
'@; Set-Content -Path 'Study Tools\MyBib\README.md' -Value $txt -Encoding UTF8

REM ---------- Darksites READMEs (with strong disclaimer) ----------
powershell -NoProfile -Command ^
$txt=@'\
# Project Gutenberg

**What it is**
Project Gutenberg hosts tens of thousands of public-domain ebooks (classic literature and historical texts).

**What you need**
- Web browser: https://www.gutenberg.org

**How to use for school (legit)**
- Great for primary source texts that are in the public domain (classic literature, historical documents).

**Legal / Ethical note**
- Project Gutenberg hosts public-domain works and is generally legal to use.

**Links**
- https://www.gutenberg.org
'@; Set-Content -Path 'Darksites\Project Gutenberg\README.md' -Value $txt -Encoding UTF8

powershell -NoProfile -Command ^
$txt=@'\
# Sci-Hub

**What it is**
Sci-Hub provides access to academic papers that are otherwise paywalled.

**What you need**
- Website addresses for Sci-Hub change frequently. Use caution.

**How to use for school (legit)**
- Researchers sometimes use it to access articles for legitimate scholarship when institutional access is not available.

**Legal & Ethical DISCLAIMER (READ CAREFULLY)**
- Sci-Hub often provides copyrighted content without publisher permission. Accessing or downloading paywalled articles via Sci-Hub may violate laws in your jurisdiction and your institution's policies.
- If you choose to use such sites you assume the legal risk. Always prefer legal channels (library access, author preprints, contacting authors).

**Safety tip**
- If you are concerned about privacy, consider legal privacy tools and consult your institution. For privacy VPN recommendation (not an endorsement): ProtonVPN — https://protonvpn.com

**Links**
- Sci-Hub domains change; exercise caution.
'@; Set-Content -Path 'Darksites\Sci-Hub\README.md' -Value $txt -Encoding UTF8

powershell -NoProfile -Command ^
$txt=@'\
# Annes Archive (Anna\'s Archive)

**What it is**
Anna\'s Archive aggregates library/archive content, often including books and academic materials.

**What you need**
- Web access: https://annas-archive.li/

**Legal & Ethical DISCLAIMER**
- Some content may be copyrighted and hosted without permission. Using or distributing copyrighted content can have legal consequences.
- Always prefer legal access methods and respect copyright.

**Safety tip**
- Consider legal alternatives first and understand local laws. If privacy is a concern, use legal privacy tools.

**Links**
- https://annas-archive.li/
'@; Set-Content -Path 'Darksites\Annes Archive\README.md' -Value $txt -Encoding UTF8

powershell -NoProfile -Command ^
$txt=@'\
# The Pirate Bay

**What it is**
The Pirate Bay is a well-known torrent index site that lists torrent files and magnet links.

**What you need**
- Extreme caution: many torrents contain copyrighted content.

**Legal & Ethical DISCLAIMER**
- Downloading or sharing copyrighted material without permission is illegal in many countries and violates most institutions\' policies.
- This repository does NOT endorse illegal downloading. Use legal sources.

**Safety tip**
- Do not use torrent sites for copyrighted content. If researching privacy tools, consult legal resources. ProtonVPN: https://protonvpn.com

**Links**
- thepiratebay.org (domain status changes; many ISPs block it)
'@; Set-Content -Path 'Darksites\The Pirate Bay\README.md' -Value $txt -Encoding UTF8

REM ---------- Main README for Websites folder ----------
powershell -NoProfile -Command ^
$txt=@'\
# Websites (Extra Tools)

This folder organizes curated web tools and resources into three categories:

- **AI Tools** — helpful AI-powered sites for writing, summarizing, and research.
- **Study Tools** — legitimate study & research resources.
- **Darksites** — sites that can provide access to materials but may have legal/ethical risks. **Read disclaimers carefully.**

## How to use
- Browse the category folders and open each tool's README.md for quick guidance.
- To add a new tool, copy `TEMPLATE_README.md` and edit it inside the relevant category folder.

## Important disclaimer
This repository is for educational purposes only. Respect copyright and the rules of your institution. We DO NOT endorse illegal activity. When in doubt, use legal channels (library access, author permissions, institutional subscriptions).

'@; Set-Content -Path 'README.md' -Value $txt -Encoding UTF8

echo Done — created folders and README.md files.
pause
popd
