---
name: reflect
description: After a long or painful agent run, encode the lesson in a skill, script, or lint. Use when a process failed, an agent skipped a skill, or the user says reflect, capture the lesson, or do not repeat that.
---

# reflect

A chat reminder dies with the session. A skill, script, or lint survives.

## Process

1. Name the failure in one sentence.
2. Name the file that should have prevented it.
3. Edit that file, or add a script check. Keep the change small.
4. Run `scripts/check-skills.sh` if you changed skill text.
5. Tell the user which file changed and why.

## Do

- Shorten a playbook step that the agent skipped
- Add a lint or script for a mechanical rule
- Repeat a required read in `agents/*.md` if a subagent drifted

## Do not

- Add a paragraph of "remember to"
- Grow `SKILL.md` past 500 lines. Move detail to `references/`
- Encode a one-off product bug as a harness skill
