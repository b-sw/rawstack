---
name: why
description: Use for design-rationale questions. Review pull requests, their descriptions and comments, and linked issues when available. Use how for runtime behavior.
disable-model-invocation: true
---

# Why

Investigate the motivation and intent behind code.

Companion to the `how` skill. `how` answers what code does. `why` answers what led to its shape.

## Operating posture

Act as a careful investigator. Distinguish evidence from inference. Read `references/epistemics.md` before you synthesize findings.

## Step 1. Understand the target

Identify the code, design decision, or behavior in the question. If the target is unclear, state your interpretation and investigate it.

## Step 2. Establish the pull-request anchor

Use local history to identify relevant commits and pull requests. Read each relevant pull request in full. Read its title, description, review comments, and discussion comments.

```bash
git log --follow -p -- <file>
git log --oneline -20 -- <file>
git log -1 --format=%B <commit>
gh pr view <number> --json title,body,author,createdAt,mergedAt,labels,closingIssuesReferences,comments,reviews
```

If a pull request links an issue, read that issue. Do not search unrelated issues or other evidence sources.

Record the file paths, symbols, commits, pull-request numbers, and linked issues as the investigation anchor.

## Step 3. Gather evidence

Spawn one read-only pull-request investigator. Spawn one read-only issue investigator only when a linked issue exists and is available.

Use these settings for every investigator:

- `model`: `gpt-5.6-terra`
- `reasoning_effort`: `medium`
- `readonly`: `true`

Give each investigator `references/investigator-prompt.md`, the investigation anchor, and the user's question. The pull-request investigator reviews pull requests and their comments. The issue investigator reviews only the linked issue.

## Step 4. Synthesize

Spawn one read-only synthesizer with these settings:

- `model`: `gpt-5.6-terra`
- `reasoning_effort`: `medium`
- `readonly`: `true`

Give it the investigator findings, the investigation anchor, the user's question, `references/epistemics.md`, and `references/synthesizer-prompt.md`.

## Step 5. Present

Present the synthesizer's output. Preserve its confidence language.

## Output format

Use the structure in `references/synthesizer-prompt.md`. Keep direct evidence, inference, gaps, and consulted sources separate. If the user plans a change, add Preserve, Change, Avoid, and Risk constraints.

## Reference files

- `references/epistemics.md`: confidence tiers and phrasing.
- `references/investigator-prompt.md`: investigator prompt template.
- `references/synthesizer-prompt.md`: synthesizer prompt template and output format.
