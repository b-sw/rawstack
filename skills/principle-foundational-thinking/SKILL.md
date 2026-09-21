---
name: principle-foundational-thinking
description: Apply before writing logic to choose core types and data structures, order scaffold and feature work, and isolate shared concurrent state. Get the data structures right so later code is clear.
disable-model-invocation: true
---

# Principle: Foundational Thinking

Structural decisions preserve future options. Code-level decisions preserve
simplicity.

## Start with data structures

Choose the data shape before you write logic. Define core types early. Trace
each access path. Choose structures that fit the most important paths.

Keep the structure DRY. Do not make every line DRY. Let types and data models
converge. Three similar statements can be clearer than an early abstraction.
Prefer explicit code to clever code. Test behavior and edge cases. Do not test
line counts.

## Keep concurrent state isolated

Before actors share state, ask: "What happens if another actor changes this at
the same time?" If the answer is not "nothing," isolate the state.

## Build scaffold before features

Build shared foundations before features that need them. Ask: "Will every later
phase benefit if this exists now?" CI, linting, test infrastructure, and shared
types are scaffold.

Order work to preserve options. Set up before features. Write tests before
fixes. Keep commits small and focused on one purpose.

Each increment must add one coherent abstraction or deepen an existing one. Do
not distribute a new capability across callers as special-case coordination.

Remove dead code before you add scaffold. Subtraction comes first.
