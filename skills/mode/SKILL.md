---
name: mode
description: Entry skill for non-trivial work. Matches the task to a playbook, copies the steps into a todo list, and calls prove-it and other skills as those steps fire. Use when the user starts a task, says "use mode", or the work needs a repeatable process.
---

# mode

Read this file in full before you act. Read `skills/asd-ste100/SKILL.md` if you have not already applied it in this turn.

## Process

1. Match the user request to one playbook below. If none fit, use Change and say which steps you dropped or added.
2. Copy the playbook steps into a todo list, in the same order.
3. Execute the steps. Call other skills when a step names them.
4. Stop when Prove-it passes, or when the playbook is Investigate and the answer is complete.

Do not invent a new process for each chat.

## Playbooks

### Investigate

Use when the user wants a read-only answer. No edits.

1. Restate the question in one sentence.
2. Search the code and docs. Prefer tools over memory.
3. Answer with evidence. Cite file paths.
4. List open questions. Do not guess.

### Change

Use when the user wants a behavior change, a fix, or a new skill file.

1. Restate the goal and the check in one sentence each.
2. Reproduce the current behavior, or write the check first if there is no repro.
3. Make the smallest change that meets the goal.
4. Follow `skills/prove-it/SKILL.md`.
5. Follow `skills/reflect/SKILL.md` if the run was long or the process failed.

### Review

Use when the user wants a diff, a PR, or a patch reviewed.

1. Read the full diff.
2. Try to break the change. Name the failure you expect.
3. Check that Prove-it evidence exists. If it does not, say so.
4. Report findings. Rank them: must fix, should fix, optional.
