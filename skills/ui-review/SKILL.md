---
name: ui-review
description: Review an existing frontend UI for visual hierarchy, consistency, responsiveness, accessibility, state coverage, interaction clarity, and design-system compliance before recommending changes.
---

# UI Review

Use this skill after UI implementation or when evaluating an existing interface.

## Review Order

1. Understand the intended task and inspect existing project design guidance.
2. Review information hierarchy and reading order.
3. Review layout, alignment, spacing rhythm, and density.
4. Review typography and semantic emphasis.
5. Review component and token consistency.
6. Review interaction affordances and feedback states.
7. Review loading, empty, error, disabled, and success states where applicable.
8. Review responsive behavior and overflow risks.
9. Review accessibility basics: labels, focus visibility, keyboard reachability, contrast, semantic structure, and motion concerns.
10. Separate defects from preferences.

## Severity

Classify findings when useful:

- Critical: blocks task completion, causes severe accessibility failure, or breaks major layouts.
- High: materially harms usability, consistency, or responsiveness.
- Medium: noticeable quality issue with limited functional impact.
- Low: polish or optional refinement.

## Review Rules

- Do not redesign the entire interface merely because another style is possible.
- Prefer fixes that preserve the project's established visual language.
- Identify repeated systemic causes before patching individual instances.
- When several findings share one cause, recommend fixing the token/component/root primitive instead of every page separately.
- Distinguish confirmed implementation issues from subjective stylistic suggestions.

## Output

Prioritize actionable findings with evidence, affected surface, likely cause, and the smallest durable fix.
