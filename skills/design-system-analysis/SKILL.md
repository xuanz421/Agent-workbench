---
name: design-system-analysis
description: Inspect an existing frontend project to identify its actual design system, including tokens, typography, spacing, color, radius, components, layout conventions, and inconsistencies before UI work begins.
---

# Design System Analysis

Use this skill before major UI work when the project's visual system is unclear, fragmented, or undocumented.

## Sources to Inspect

Prefer actual implementation over assumptions:

- DESIGN.md or design documentation
- theme files and CSS variables
- Tailwind or equivalent configuration
- component libraries and shared primitives
- typography setup
- layout primitives
- representative screens
- responsive utilities

## Analysis

1. Identify existing design tokens.
   - color roles
   - spacing scale
   - typography scale
   - radius
   - shadows/elevation
   - breakpoints
   - motion values

2. Identify reusable primitives and components.
   - buttons
   - inputs
   - cards/surfaces
   - navigation
   - tables/lists
   - dialogs
   - feedback components

3. Identify layout conventions.
   - container widths
   - gutters
   - grid behavior
   - page spacing
   - responsive collapse rules

4. Detect inconsistencies.
   - duplicated near-identical tokens
   - arbitrary pixel values
   - competing component implementations
   - inconsistent visual states
   - page-local styling that should be shared

5. Determine confidence.
   - Confirmed: directly represented by shared code or documentation.
   - Strong pattern: repeated consistently across multiple surfaces.
   - Local exception: appears intentionally limited to one context.
   - Unknown: insufficient evidence.

## Recommendations

- Preserve coherent existing systems.
- Consolidate repeated accidental variation into shared tokens/components.
- Do not invent a new design system if a usable one already exists.
- If no coherent system exists, propose the smallest practical baseline rather than a large speculative redesign.
