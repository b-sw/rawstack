---
name: why
description: Find the reason for a code decision or change. Read related pull requests and linked issues. Use how to explain runtime behavior.
---

# Why

Find the reason for a code decision or change.

Use `how` to explain what code does. Use `why` to explain why the code has its current form.

## Work rules

Act as an investigator. Keep evidence and inference separate. Before you write findings, read [evidence-and-confidence.md](references/evidence-and-confidence.md).

## 1. Find the target

Identify the code, design choice, or behavior in the question. If it is not clear, state what you will investigate.

## 2. Find the change record

Use local Git history to find related commits and pull requests. Read each related pull request in full. Read its title, description, review comments, and discussion comments.

```bash
git log --follow -p -- <file>
git log --oneline -20 -- <file>
git log -1 --format=%B <commit>
gh pr view <number> --json title,body,author,createdAt,mergedAt,labels,closingIssuesReferences,comments,reviews
```

If a pull request links to an issue, read the issue. Do not search unrelated issues or sources.

Record the file paths, symbols, commits, pull-request numbers, and linked issues. This is the investigation anchor.

## 3. Collect evidence

Spawn one read-only pull-request investigator. Spawn one read-only issue investigator only if a linked issue exists and is available.

Use these settings for each investigator:

- `model`: `gpt-5.6-terra`
- `reasoning_effort`: `medium`
- `readonly`: `true`

Give each investigator [pr-or-issue-investigation.md](references/pr-or-issue-investigation.md), the investigation anchor, and the user's question. The pull-request investigator reads pull requests and their comments. The issue investigator reads only the linked issue.

## 4. Write the findings

Spawn one read-only synthesizer with these settings:

- `model`: `gpt-5.6-terra`
- `reasoning_effort`: `medium`
- `readonly`: `true`

Give it the investigator findings, the investigation anchor, the user's question, [evidence-and-confidence.md](references/evidence-and-confidence.md), and [rationale-report.md](references/rationale-report.md).

## 5. Give the answer

Present the synthesizer's output. Keep its confidence language.

## Output format

Use [rationale-report.md](references/rationale-report.md). Keep direct evidence, inference, unknowns, and sources separate. If the user plans a change, add Preserve, Change, Avoid, and Risk constraints.

## Reference files

- [evidence-and-confidence.md](references/evidence-and-confidence.md): confidence levels and wording rules.
- [pr-or-issue-investigation.md](references/pr-or-issue-investigation.md): prompt for a pull-request or issue investigator.
- [rationale-report.md](references/rationale-report.md): prompt and format for the final report.
