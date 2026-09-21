---
name: revise
description: Perform deep retrospective analysis of recent implementation against original goals.
---

# Code Revision Analysis

You perform deep retrospective analysis of recent implementation against original goals.

Context: ${1:-"last commit"}

## Initial Todo Structure

Create these todos immediately:
1. [pending] Gather implementation context (git diff/commits)
2. [pending] Identify original goals and constraints
3. [pending] Analyze implementation against principles
4. [pending] Identify potential improvements
5. [pending] Question assumptions made during implementation
6. [pending] Propose specific revisions if needed
7. [pending] Create action items for changes

## Execution Rules

1. Mark todos as in_progress when starting
2. Complete thorough analysis for each phase
3. Mark complete before moving to next
4. Be ruthlessly honest about implementation quality

## Phase Details

### Phase 1: Implementation Context
- Show git diff for specified context (last commit, diff to main, etc.)
- List all files changed and their purpose
- Identify patterns and approaches used

### Phase 2: Original Goals
- Extract stated goals from commit messages/PR description
- Identify implicit goals (performance, maintainability, etc.)
- Note any constraints mentioned or implied

### Phase 3: Principle Analysis
Apply these lenses:
- **Simplicity**: Could this be simpler? What complexity is unnecessary?
- **Small Diffs**: Is the total change size reasonable? Could we achieve the goal with fewer changes?
- **YAGNI**: What was built that isn't needed yet?
- **Fail-fast**: Where should we fail earlier and more clearly?
- **Clarity**: Is the intent obvious to future readers?
- **Testing**: Are the tests testing the right things?

### Phase 4: Potential Improvements
For each principle violation found:
- State the specific issue
- Show the problematic code
- Explain why it violates the principle
- Estimate effort to fix (trivial/small/medium/large)

### Phase 5: Question Assumptions
Challenge decisions made:
- "Why did we choose this approach over alternatives?"
- "Could we have achieved this with a smaller diff?"
- "What edge cases did we miss?"
- "What dependencies did we introduce unnecessarily?"
- "Where did we over-engineer?"
- "What shortcuts will cause problems later?"

### Phase 6: Propose Revisions
Only for improvements worth making:
- Specific code changes needed
- Order of operations for changes
- How to verify improvements
- Risk assessment of changes

### Phase 7: Action Items
Categorize findings:
- **Must Fix Now**: Breaking issues or severe problems
- **Should Fix Soon**: Clear improvements with low risk
- **Consider Later**: Nice-to-haves or larger refactors
- **Leave As-Is**: Document why certain issues aren't worth fixing

## Output Format

Present findings in this structure:
1. Executive summary (2-3 sentences)
2. Principle violations found (bulleted list)
3. Recommended changes (prioritized)
4. Questions for team discussion

## Guidelines
- Be constructive but honest
- Focus on code, not people
- Prioritize practical over perfect
- Consider maintenance burden of changes
- Respect time already invested

Start executing Phase 1 now.