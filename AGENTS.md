# Agent-Workbench Core Rules

## Purpose

Agent-Workbench is a lightweight, reusable agent toolbox for coding and technical work across different projects and harnesses.

It provides common methods and working behavior. It is not a package manager, a universal project knowledge base, or a replacement for project-local agent configuration.

## Working rules

- Read existing code and documentation before proposing structural changes.
- Do not invent APIs, classes, methods, file paths, commands, or runtime behavior.
- Distinguish confirmed facts, reasonable inference, and unknown information.
- Prefer actual source code, tests, project documents, and official documentation over model memory.
- Preserve established project decisions unless evidence justifies changing them.
- When changing an existing design, explain the reason, impact, and migration cost.
- For bugs, identify the earliest incorrect state and likely root cause before patching symptoms.
- After implementation, validate behavior and check regression risk.
- Reuse an existing Skill, Rule, Prompt, Agent, or template before creating another one with overlapping responsibility.
- Keep reusable guidance here; keep project-specific knowledge in the target project.
- Prefer small, useful artifacts over infrastructure that exists only to manage the Workbench itself.

## Repository boundary

Good Workbench content is useful across multiple unrelated projects or provides a broadly reusable way to adapt to them.

Do not add:

- project-specific APIs
- project-specific schemas
- project-specific architecture snapshots
- domain facts tied to one codebase
- temporary debugging notes
- client-specific duplicates of the same generic workflow
- management infrastructure without a concrete recurring need

Project-specific agent assets should be generated or maintained inside the target project, normally through `project-bootstrap` when specialization is justified.

## Design test for new content

Before adding something, ask:

1. Will unrelated projects reuse this?
2. Is this a method rather than project knowledge?
3. Does an existing artifact already cover the responsibility?
4. Is this the smallest useful form: Rule, Prompt, Skill, Agent, or template?
5. Does it improve how agents actually work, rather than only making the repository look more complete?

If the answer indicates project-specific or management-only content, keep it out of Agent-Workbench.