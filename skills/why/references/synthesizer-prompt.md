# Synthesizer prompt template

You answer a design-rationale question from pull-request and linked-issue evidence. Use the confidence rules in `references/epistemics.md`.

## Question

> {QUESTION}

## Investigation anchor

**Target files:** {FILES_WITH_LINE_RANGES}

**Key symbols:** {SYMBOLS}

## Investigator findings

{ALL_INVESTIGATOR_FINDINGS}

## Rules

1. Cite every Direct or Supported claim.
2. Use hedged language for Inferred claims.
3. Preserve contradictions.
4. Do not cite code as evidence of intent.
5. State gaps without speculation.

## Output format

### The question

Restate the question.

### The code in question

List file paths, symbols, and relevant pull requests.

### What we found

List direct and supported claims with citations.

### What we can infer

List evidence-based inferences. Show the inference path.

### Competing hypotheses

List alternatives when evidence supports more than one explanation.

### What we do not know

List unanswered questions and missing evidence.

### Sources consulted

List the pull requests, their descriptions and comments, and linked issues that you read.

### Confidence summary

State the confidence level and its evidence.
