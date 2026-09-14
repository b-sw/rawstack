# rawstack

A portable pack of agent skills. Any harness that can load `SKILL.md` files can use it.

Every reply uses Simplified Technical English. The pack does not add a task router.

## What this pack contains

| Path | Job |
|---|---|
| `AGENTS.md` | Always-on STE rules for Cursor and other `AGENTS.md` harnesses |
| `CLAUDE.md` | Same rules for Claude Code |
| `skills/asd-ste100` | Simplified Technical English rewrite skill, vendored |
| `skills/no-comments` | Strip comments. Spawn Comment Sicko, then act on accepted findings |
| `agents/comment-sicko.md` | Comment reviewer. Report only. Do not write application code |
| `scripts/check-skills.sh` | Frontmatter check, plus STE lint on pack prose |

`no-comments` and Comment Sicko come from [pstack](https://github.com/cursor/plugins/tree/main/pstack). Type-checker and linter wording is language-agnostic here.

## Install

Copy `skills/` plus `AGENTS.md` (and `CLAUDE.md` if you use Claude Code) into the target project.

Cursor: keep this repo open, or copy the files into the project.

Claude Code: copy `CLAUDE.md` and `skills/` to the project root. Skills may also live under `.claude/skills/`.

## Use

Replies follow STE with no extra command.

To strip comments:

```text
/no-comments
```

## Name

`rawstack` means a stack you can read as files. It is not a Cursor-only plugin.
