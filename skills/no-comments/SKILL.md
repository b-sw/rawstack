---
name: no-comments
description: Review code comments. Remove comments when clear code can express the same information.
disable-model-invocation: true
---

# No comments

Use this skill to remove comments that add no information beyond the code.

## Responsibilities

The skill sets the scope, decides which findings to accept, and edits the codebase. Comment Sicko reviews the scope and reports candidate comments. Comment Sicko does not edit application code.

## Process

1. Use the caller's files or diff. Otherwise use the current diff against `main`.
2. Spawn Comment Sicko with that scope.
3. Review each finding against the code.
4. Remove accepted comments. Simplify nearby code when a small local change makes the comment unnecessary.
5. Keep comments that state legal terms, public API contracts, external requirements, or necessary formatter and lint directives.
6. Report removed comments, kept comments, code changes, and open work.

Ask before a change that exceeds the selected scope.
