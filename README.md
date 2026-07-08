# less

A communication protocol between you and Claude.

Claude info-dumps by default. `less` makes it speak like someone who respects your
attention: answer first, keep every fact that matters, cut the rest, offer choices as
a pick-list you can answer with one letter.

It shapes **only what Claude says to you** — never how hard it thinks, what tools it
runs, or how other plugins behave. Less noise, not less signal. Not a token-saver; a
mental-space saver.

## What it does

- **Answer first.** The result or decision is line one. No preamble, no recap, no
  "Great question", no sign-off pleasantries.
- **Keeps the load-bearing facts.** Numbers, paths, risks, breaking changes,
  anything irreversible. Minimal ≠ missing.
- **Breathes.** One idea per line. Whitespace over walls.
- **Offers pick-lists.** Decisions come as `a` / `b` / `c`, recommended first — reply
  with a letter.

## Modes

| mode  | behavior                                            |
|-------|-----------------------------------------------------|
| `on`  | default — minimal, answer-first, pick-lists         |
| `zen` | near-silent — results and pick-lists only           |
| `off` | normal Claude verbosity                             |

Switch anytime:

```
/less zen
/less off
/less status
```

## Install

```
claude plugin marketplace add nagisanzenin/less
claude plugin install less@less
```

Active from the next session.

## How it works

A `UserPromptSubmit` hook injects the protocol (`protocol.md`) into Claude's context
each turn — silent to you, additive to everything else. It replaces nothing, so it
can't degrade Claude's work or collide with other plugins. Turn it off and Claude is
exactly its normal self.

## Uninstall

```
claude plugin uninstall less@less
```

## License

MIT
