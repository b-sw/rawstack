# Investigator prompt template

You investigate the historical rationale for a code change. Gather evidence. Do not write the final answer.

## Question

> {QUESTION}

## Investigation anchor

**Target files:** {FILES_WITH_LINE_RANGES}

**Key symbols:** {SYMBOLS}

**Relevant commits:** {COMMIT_LIST}

**Pull requests:** {PR_NUMBERS}

**Linked issues:** {ISSUE_IDS}

## Assigned source

{SOURCE_NAME}

Read the assigned pull requests or linked issue in full. Pull requests require the title, description, review comments, and discussion comments. Follow only links that lead to another relevant pull request or linked issue.

Capture exact quotes with URLs and authors when available. Record searches that found no evidence. Record contradictions without resolving them.

## Output format

### Source

Name the pull request or linked issue you reviewed.

### What I read

List every pull request, comment thread, or linked issue you reviewed.

### Direct evidence

For each item, give the exact statement, its URL, author, date, and relevance.

### Indirect evidence

List evidence that supports an inference. State alternative readings.

### Contradictions

List conflicting statements with both citations.

### Gaps

List unanswered questions and searches with no result.
