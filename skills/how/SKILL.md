---
name: how
description: "Use for \"how does X work\", code walkthroughs before changing something, and placement / ownership / layering questions (\"where should this live\", \"which package owns this\", \"is this the right layer\"). Explains subsystem architecture, runtime flow, onboarding mental models. Use why for motivation."
---

# How

Use this skill to answer questions about how code works. Give a senior engineer enough information to work in the area. Do not give a line-by-line source-code review.

## Step 1: Assess the Scope

If the question has an unclear scope, state your interpretation. Then examine the code. The user can correct the scope later.

- **Simple:** One module, a small utility, or a narrow question such as “How does function X work?” Use one explainer. Continue with Step 2b.
- **Complex:** A subsystem across multiple files or services, a cross-cutting feature, or a full architecture overview. Use parallel explorers. Continue with Step 2a.

If you are unsure, treat the question as simple.

## Step 2a: Explore a Complex Question

Divide the question into 2 to 4 distinct exploration angles. Start all explorers in one message.

- `subagent_type`: `generalPurpose`
- `model`: `gpt-5.6-terra`
- `reasoning_effort`: `medium`
- `readonly`: `true`

Give each explorer the prompt in `references/explorer-prompt.md`. Fill in its exploration angle. Continue with Step 3.

## Step 2b: Explain a Simple Question

Start one Task subagent. It must examine the code and write the explanation in one pass.

- `subagent_type`: `generalPurpose`
- `model`: `gpt-5.6-terra`
- `reasoning_effort`: `medium`
- `readonly`: `true`

Build its prompt from `references/explainer-prompt.md`. Omit the explorer findings section. Continue with Step 4.

## Step 3: Combine Findings for a Complex Question

After all explorers return, start one Task subagent to combine their findings into one explanation.

- `subagent_type`: `generalPurpose`
- `model`: `gpt-5.6-terra`
- `reasoning_effort`: `medium`
- `readonly`: `true`

Build its prompt from `references/explainer-prompt.md`. Include the findings from every explorer.

## Step 4: Present the Explanation

Give the explainer output to the user. You can make small edits for clarity or conversation context. Do not change its substance.

## Output Format

Use the sections in `references/explainer-prompt.md` when they apply: Overview, Key Concepts, How It Works, Where Things Live, and Gotchas.
