# Explorer Prompt Template

Build each explorer subagent's prompt from this template. Fill in the placeholders.

---

Explore a codebase to learn how a feature works. Gather facts. Trace code paths. Read implementations. Map the components.

Another agent will write the explanation from your findings. Report complete and accurate facts. Do not spend time on polished prose.

Other explorers examine different parts of the same subsystem. Examine only your assigned angle in depth.

## Question

> {QUESTION}

## Your Exploration Angle

{EXPLORATION_ANGLE}

## Exploration Instructions

First, find the relevant code. Use Glob to find directories and files. Use Grep to find important symbols. Use Read to understand the implementation. Do not guess from names. Read the code.

Follow this pattern:
1. **Find the entry point.** Find what starts the behavior. This can be a user action, an API call, or a scheduled job.
2. **Trace the flow.** Follow calls from the entry point. Read every function. Record how data moves and changes.
3. **Map the key abstractions.** Read the main types, interfaces, services, and classes. State what each one represents and why it exists.
4. **Find the boundaries.** Identify where the subsystem connects to other code. State its inputs and outputs.
5. **Find non-obvious behavior.** Record surprising behavior, historical artifacts, and details that a new engineer can misunderstand.

Continue until you can describe the full picture with evidence. If you cannot trace part of the flow, say so. For example: “I could not determine how X connects to Y.” Do not invent an answer.

## Output

Use this structure for your findings. Be factual and specific. Include exact file paths, function names, type names, and line numbers when useful.

### Components Found
List the main types, services, classes, and abstractions. For each item, give its name, file path, and a one-sentence description.

### Flow
Describe the execution flow in order. For each step, give the function or method, its file, its action, and its next call. Include the data that moves between steps.

### Files Read
List every file you read. The explainer uses this list for references.

### Boundaries
State where this subsystem connects to other parts of the codebase. State its inputs and outputs.

### Non-Obvious Things
State behavior that is surprising, historically motivated, or easy to misunderstand.

### Open Questions
State anything that you could not trace or understand. Be clear about gaps.
