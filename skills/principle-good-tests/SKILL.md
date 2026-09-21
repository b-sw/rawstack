---
name: principle-good-tests
description: Create or review automated tests that prove user-visible behavior and release confidence. Use for test design, test changes, and test reviews.
---

# Principle: Good Tests

Test observable behavior, not the current implementation. Use inputs and
results such as returned values, persisted data, emitted events, or external
effects.

Use this north star: implementation changes should need few or no test changes.
Behavior changes should need test changes.

Never assert interactions. Do not check mock calls, method calls, arguments,
call counts, call order, or an equivalent spy, counter, or test-only hook.

Prefer controller, API, or other user-facing boundary tests. Use integration or
end-to-end tests for storage, messaging, HTTP, serialization, transactions,
configuration, and framework wiring. Use Testcontainers for real dependencies
when practical.

Use unit tests for algorithms and other small, self-contained logic. Do not
default to service or repository unit tests. For database behavior, use the
real schema, data, query, mapping, constraints, and transactions.

Mock only an external dependency when a real test double is not practical. Do
not mock code that the application owns. Do not use heavy mock setups. If a
test needs many mocks, move its boundary outward or use real components.

Do not add tests only for coverage. High coverage does not show release
confidence. Add tests for important behavior, failures, data boundaries, and
realistic paths.
