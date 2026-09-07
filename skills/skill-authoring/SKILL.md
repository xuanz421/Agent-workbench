---
name: skill-authoring
description: Design, create, and review reusable Agent Skills for this workbench. Use when adding or changing SKILL.md workflows, triggers, supporting references, scripts, or assets.
---

# Skill Authoring

Use this skill whenever a new reusable skill is proposed or an existing skill needs significant revision.

## Admission test

Before creating a skill, verify that:

1. The workflow is reusable across multiple unrelated projects, or is a broadly reusable semi-universal capability.
2. It is not merely project-specific knowledge that belongs in the target repository.
3. It is meaningfully distinct from existing skills.
4. A skill is more appropriate than a short rule, prompt, template, or agent role.

## Authoring workflow

1. Define the trigger: when should an agent choose this skill?
2. Define the outcome: what artifact, decision, investigation, or change should result?
3. Define the minimum evidence the agent must inspect before acting.
4. Write a short ordered workflow with explicit stop/verification points.
5. Add failure modes and anti-patterns only where they materially change behavior.
6. Keep project-specific examples out of the canonical workflow unless they are clearly marked as examples.
7. Use `references/`, `scripts/`, or `assets/` only when they reduce repetition or provide executable/reusable support.
8. Ensure `name` is stable, specific, and lowercase with hyphens.
9. Ensure `description` explains both the task and when the skill should be invoked.
10. Review overlap with existing Workbench skills and link related workflows instead of duplicating them.

## Quality checks

- Can an agent identify when to use this skill from the description alone?
- Does the workflow require evidence before irreversible changes?
- Is the skill concise enough to remain useful in context?
- Does it avoid encoding stale project facts?
- Does it define what not to do where common failure modes exist?
- Would two unrelated projects benefit from the same workflow?

When a proposed skill fails the admission test, place the content in the target project's local agent configuration instead of Agent-Workbench.