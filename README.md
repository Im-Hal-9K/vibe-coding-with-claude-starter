# Vibe Coding with Claude — Starter

Welcome. In this 2-hour session you'll build a small, real, working thing with Claude, and you'll do the building yourself. No experience needed, nothing to install. Everything runs in your browser.

## 1. Open your workspace

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/Im-Hal-9K/vibe-coding-with-claude-starter?quickstart=1)

Click the **Open in GitHub Codespaces** button above (sign in with a free GitHub account if asked). Wait a minute while your workspace builds. A full code editor opens right in your browser, with nothing installed on your own computer.

## 2. Connect to Claude (takes 20 seconds)

Once the editor has finished opening:

1. **Open a terminal:** top menu **Terminal → New Terminal** (or press `` Ctrl+` ``). A panel opens at the bottom, that's where you type commands.
2. **Give Claude the class key.** Type the line below, replacing `PASTE-CLASS-KEY-HERE` with the **key your instructor shows on screen**, then press Enter:
   ```bash
   export ANTHROPIC_API_KEY=PASTE-CLASS-KEY-HERE
   ```
   Nothing visible happens, and that's correct. *(What it does: `export` saves a value for this terminal session; `ANTHROPIC_API_KEY` is the name Claude looks for. You just handed Claude the temporary key it needs.)*
3. **Start Claude.** Type:
   ```bash
   claude
   ```
4. The first time, Claude asks **"Do you want to use this API key?"** Choose **Yes**. (It defaults to *No*, so don't just press Enter.)

You're connected. If you ever close the terminal and open a new one, run the `export` line again.

## 3. Build something

Tell Claude, in plain English, what you want to build. Use a starter idea from [`PROMPTS.md`](PROMPTS.md) or bring your own.

Then run it, look at it, and ask Claude to change something. That loop, **describe → look → refine**, is the whole skill. When your project runs, a **preview opens automatically** in a side tab. Your page replaces `index.html`.

## A few commands worth knowing

You only need a couple. And remember, you can always ask Claude itself, "what does this command do?"

| You type | What it does |
| --- | --- |
| `claude` | Starts Claude in the terminal. |
| `export ANTHROPIC_API_KEY=…` | Gives Claude your class key for this session. |
| `serve .` | Serves your page in the live preview (Claude will usually do this for you). |
| `Ctrl + C` | Stops whatever is currently running in the terminal. |

## What you'll do today

- Meet Claude and see how plain-language requests become working software.
- Build one small thing you'd actually use (a page, a calculator, a tracker, flashcards, a countdown, see `PROMPTS.md`).
- Make it better, fix what breaks, and learn how to keep going on your own.

## If something goes wrong

Tell your instructor. You cannot break anything, and there are no dumb questions. If Codespaces misbehaves, your instructor will point you to claude.ai with Artifacts as a backup.

---

*Instructor note: the class key is shown on screen during class, never stored in this repo. The `.devcontainer/` pre-installs the Claude tooling, routes it through the spend-capped class proxy, and pre-answers Claude's setup prompts so students land ready.*
