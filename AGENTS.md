# Working rules

## Config directory

These rules ship with skills and agents in one config directory.
Use the directory of your tool:

- Claude Code: `~/.claude`
- Codex: `~/.codex`
- Other tools: the directory where you installed this repo

In this file, `<config>` means that directory.

## Raw mode

When the user requests raw mode, `$raw-mode`, or `/raw-mode`, read
`<config>/skills/raw-mode/SKILL.md` in full before work.
Use the `raw-agent` custom agent (subagent) for normal subagents that raw mode requires.
If your tool has no custom agents, give each subagent the instructions in
`<config>/agents/raw-agent.md`.

## User-facing wording

Write every user-facing reply in STE-flavored English from the STE skill.
Use short sentences. Use active voice. Use one idea per sentence.
Do not use semicolons. Do not use phrasal verbs.
Do not stack hedges. Do not turn actions into nouns.
Keep hedges that change the claim, such as "may have failed".
Do not apply this to code, diffs, or commit messages.
When the user asks to rewrite or disambiguate text, read
`<config>/skills/simple-english/SKILL.md` and follow that skill.
