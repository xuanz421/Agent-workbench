---
name: frontend-design
description: Create or substantially revise frontend UI with a deliberate visual direction, strong hierarchy, reusable design decisions, responsive behavior, and minimal generic AI-generated styling.
---

# Frontend Design

Use this skill when creating a new page, dashboard, landing page, application surface, or when substantially redesigning an existing UI.

## Workflow

1. Inspect the existing project first.
   - Read DESIGN.md if present.
   - Inspect existing components, tokens, styles, typography, layout conventions, and responsive patterns.
   - Reuse established design decisions before introducing new ones.

2. Clarify the UI intent from available project context.
   - Primary user task.
   - Information priority.
   - Required states and interactions.
   - Target viewport classes.

3. Choose a coherent visual direction before implementation.
   - Define hierarchy, density, typography, spacing, surface treatment, and interaction emphasis.
   - Avoid mixing unrelated visual languages.

4. Design structure before decoration.
   - Establish page regions and reading order.
   - Define primary, secondary, and supporting actions.
   - Use cards only when grouping actually improves comprehension.

5. Reuse components and tokens.
   - Prefer project components over one-off markup.
   - Prefer semantic tokens over arbitrary values.
   - Introduce a new primitive only when existing primitives cannot express the required pattern.

6. Implement complete UI states where relevant.
   - loading
   - empty
   - error
   - success
   - disabled
   - hover/focus/active
   - mobile and narrow layouts

7. Run a visual quality pass.
   - Check hierarchy, spacing rhythm, alignment, density, contrast, overflow, and responsive behavior.

## Anti-patterns

Avoid defaulting to generic AI UI tropes without project justification:

- every section rendered as a rounded card
- excessive glassmorphism or decorative gradients
- arbitrary purple/blue gradients as the default brand language
- oversized hero headings for ordinary application screens
- random radius values across components
- arbitrary spacing values instead of a consistent scale
- dashboard layouts copied mechanically as sidebar + metric cards
- decorative icons that do not improve comprehension

## Output Standard

A successful result should feel like one coherent product rather than a collection of individually plausible components.
