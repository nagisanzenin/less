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
- **Selectable choices.** Decisions render as the native interactive picker
  (arrow-keys + enter), recommended first — you select, you don't type. Clean UI is
  part of the calm, not a separate thing.

## Modes

| command      | behavior                                         |
|--------------|--------------------------------------------------|
| `/less:on`   | default — minimal, answer-first, pick-lists      |
| `/less:zen`  | near-silent — results and pick-lists only        |
| `/less:off`  | normal Claude verbosity                          |
| `/less:less` | show the current mode + the switches             |

Use the **namespaced** form (`/less:zen`, not `/less zen`). A bare `/less zen`
collides with Claude Code's skill-stacking parser (2.1.199+) and errors with
`args from unknown skill: zen`. Modes take effect from the next turn.

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
