---
description: Toggle the less communication protocol (on | off | zen | status)
---

Set the `less` protocol mode from the argument: `$ARGUMENTS`

Modes:
- `on` — default. Answer-first, minimal, pick-lists for choices.
- `zen` — near-silent. Results and pick-lists only.
- `off` — normal Claude verbosity.
- `status` — report the current mode without changing it.

Do exactly this, nothing more:

- If the argument is empty or `status`: read `~/.claude/less.mode` (absent means `on`) and report the current mode in ONE line.
- If the argument is `on`, `off`, or `zen`: run
  `mkdir -p ~/.claude && printf '%s' "<mode>" > ~/.claude/less.mode`
  then confirm in ONE line, e.g. `less → zen (active next session)`.
- Any other argument: show the four valid modes as a pick-list, nothing else.

Reply in one line. No preamble, no explanation.
