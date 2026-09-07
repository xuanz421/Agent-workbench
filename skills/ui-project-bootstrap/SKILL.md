---
name: ui-project-bootstrap
description: Bootstrap project-local UI guidance by inspecting the target repository's existing frontend implementation and generating or updating a project-local DESIGN.md without storing project-specific design knowledge in Agent-Workbench.
---

# UI Project Bootstrap

Use this skill when a project needs durable UI guidance but does not yet have a clear documented design system.

## Workflow

1. Inspect the target project's actual frontend sources.
   - package/build configuration
   - application entry points
   - shared components
   - styles/theme files
   - representative pages
   - responsive behavior
   - existing design documentation

2. Run design-system analysis.
   - Extract confirmed tokens and conventions.
   - Identify stable repeated patterns.
   - Record inconsistencies separately instead of normalizing them blindly.

3. Generate or update a project-local `DESIGN.md`.
   Include only guidance supported by current project evidence or explicit project requirements.

4. Recommended DESIGN.md sections:
   - Product / UI intent
   - Visual direction
   - Color roles
   - Typography
   - Spacing
   - Radius / elevation
   - Layout rules
   - Component rules
   - Interaction states
   - Responsive rules
   - Accessibility expectations
   - Known exceptions

5. Keep project specialization local.
   - Do not copy the generated DESIGN.md back into Agent-Workbench.
   - Do not turn project-specific colors, components, or naming into global Workbench rules.

6. If the project has no coherent visual system, generate a minimal baseline and clearly mark newly proposed decisions versus discovered existing rules.

## Safety Against Stale Design Knowledge

Always prefer the current target repository over previously generated guidance. If DESIGN.md conflicts with current implementation, investigate which source reflects the latest deliberate decision before changing either side.
