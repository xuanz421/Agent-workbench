---
name: test-strategy
description: Design a risk-based test plan before generating tests. Choose appropriate unit, integration, contract, regression, end-to-end, property-based, or snapshot coverage based on project boundaries and failure risk.
---

# Test Strategy

Use this skill when a task needs new tests, broader coverage, regression protection, or a testing plan.

## Workflow

1. Inspect the relevant code, existing tests, boundaries, dependencies, and failure modes.
2. Identify what behavior is most expensive or dangerous to break.
3. Map risks to the cheapest test level that can catch them reliably.
4. Prefer a small number of high-signal tests over large amounts of low-value coverage.
5. Reuse existing test frameworks and conventions before introducing new tooling.
6. Cover important happy paths, edge cases, failure paths, and regressions.
7. Distinguish deterministic logic from integration behavior and UI/system behavior.
8. Avoid brittle assertions against incidental implementation details.
9. State what remains untested and why.

## Test level guidance

- Unit: pure logic, local invariants, deterministic transformations.
- Integration: module boundaries, persistence, filesystem, network wrappers, framework behavior.
- Contract: API schemas and compatibility between independently changing components.
- Regression: previously observed failures or high-risk behavior.
- End-to-end: critical user journeys that require multiple real components.
- Property-based: invariant-heavy algorithms with large input spaces.
- Snapshot: stable structured output where semantic review is practical; avoid for noisy markup or rapidly changing output.

Do not generate tests merely to increase line coverage.