#!/usr/bin/env bash
# less — inject the communication protocol into Claude's context each turn.
# Scope: user-facing prose only. Additive; never alters work or other plugins.
# Contract: UserPromptSubmit hook. stdout on exit 0 becomes silent context.
# Safety: never fail the user's prompt — always exit 0.

mode_file="${HOME}/.claude/less.mode"
mode="on"
if [ -f "$mode_file" ]; then
  mode="$(tr -d '[:space:]' < "$mode_file" 2>/dev/null)"
  [ -z "$mode" ] && mode="on"
fi

# off → say nothing, normal Claude.
[ "$mode" = "off" ] && exit 0

root="${CLAUDE_PLUGIN_ROOT:-$(cd "$(dirname "$0")/.." && pwd)}"

[ -f "$root/protocol.md" ] && cat "$root/protocol.md"
[ "$mode" = "zen" ] && [ -f "$root/zen.md" ] && cat "$root/zen.md"

exit 0
