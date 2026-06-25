#!/usr/bin/env bash
# Runs once when a student's Codespace is created. Installs the Claude tooling
# and pre-answers Claude Code's first-run prompts so students land straight in
# the REPL: no theme pick, no welcome/security flow, no folder-trust dialog.
set -e

# Claude Code CLI + a tiny static server for instant previews of HTML projects.
npm install -g @anthropic-ai/claude-code serve

# --- Pre-answer Claude Code first-run prompts (values captured from a real run) ---
mkdir -p "$HOME/.claude"

cat > "$HOME/.claude/settings.json" <<'JSON'
{
  "theme": "dark"
}
JSON

cat > "$HOME/.claude.json" <<'JSON'
{
  "theme": "dark",
  "hasCompletedOnboarding": true,
  "projects": {
    "/workspaces/vibe-coding-with-claude-starter": {
      "hasTrustDialogAccepted": true
    }
  }
}
JSON

echo "Claude Code pre-configured. Students: open a terminal and run: claude"
