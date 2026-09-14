---
name: prove-it
description: Prove a change against a real artifact before declaring done. Run the test, command, or UI path the user would use. Use after a change, before claiming success, or when the user says prove it or done.
---

# prove-it

Done means a real check ran. "It compiles" is not done. A self-report is not done.

## Process

1. Name the check. Use the user's check if they gave one.
2. Run that check. Capture the output.
3. If the check fails, fix the cause and run the check again.
4. In the user reply, state what you ran and what the result was.

## What counts as a check

- A test command that exercises the changed behavior
- A script in this repo, such as `scripts/check-skills.sh`
- A UI path on the real app, when the change is user-visible
- A command that prints the value you claim

## What does not count

- The model saying the change works
- Compile-only or type-check-only when the bug is runtime behavior
- A test that would still pass if the new code returned empty
