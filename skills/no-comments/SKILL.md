---
name: no-comments
description: Ask Comment Sicko to review code comments. Remove its accepted findings.
---

# No comments

Use this skill to get an independent review of code comments. Remove accepted
findings.

## Scope

Use the files or diff in the request. If the request gives no scope, inspect
the current diff against `main`.

Review comments added by the diff first. Then review comments next to changed
lines. Also review other clearly redundant comments in the selected scope.

## Process

1. Spawn `comment_sicko` with the selected scope. It reports findings only.
2. Accept each finding unless step 3 applies. Trust Comment Sicko's independent
   review. Do not defend the current code or start another comment review.
3. Reject a finding only if it is outside the scope or if removal would delete:
   - legal text
   - a required tool directive
   - a public API contract
   - an external constraint
   - rationale that the code cannot show
4. Remove each accepted comment. Do not change behavior or refactor code.
5. Report removed comments. Also report each rejected finding and its reason.

Ask before a change that exceeds the selected scope.
