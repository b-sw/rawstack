# rawstack

A portable pack of agent skills. Any harness that can load `SKILL.md` files can use it.

The pack is small on purpose. One mode routes work. STE controls English. Proof is a real check, not a claim.

## What this pack contains

| Path | Job |
|---|---|
| `AGENTS.md` | Always-on rules for Cursor and other `AGENTS.md` harnesses |
| `CLAUDE.md` | Same rules for Claude Code |
| `skills/asd-ste100` | Simplified Technical English rewrite skill, vendored |
| `skills/mode` | Entry skill. Matches a task to a playbook |
| `skills/prove-it` | Done means a real check ran |
| `skills/reflect` | After a painful run, change a skill or a script |
| `agents/default.md` | Cursor subagent that reads the mode skill first |
| `scripts/check-skills.sh` | Frontmatter and STE lint on skill text |

## Install

Copy `skills/` plus `AGENTS.md` (and `CLAUDE.md` if you use Claude Code) into the target project.

Cursor: keep this repo open, or copy the files into the project, or add a plugin manifest later.

Claude Code: copy `CLAUDE.md` and `skills/` to the project root. Skills may also live under `.claude/skills/`.

## Use

State a goal and a way to check it. Do not name a playbook unless you want to force one.

```text
the export writes duplicate rows when a retry lands mid-run. repro first, then fix and verify.
```

The mode skill matches a playbook, copies the steps into a todo list, and calls the other skills as those steps fire.

## Iterate

1. Run real work through `skills/mode`.
2. Note where the agent fails.
3. Change a skill, a script, or a lint. Do not add a chat-only reminder.
4. Run `scripts/check-skills.sh`.
5. Repeat.

## Name

`rawstack` means a stack you can read as files. It is not a Cursor-only plugin.
