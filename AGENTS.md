# Agent-Workbench Core Rules

## Purpose

This repository stores reusable agent workflows and integration guidance. It must remain project-agnostic.

## Working rules

- Read existing code and documentation before proposing structural changes.
- Do not invent APIs, classes, methods, file paths, commands, or runtime behavior.
- Distinguish confirmed facts, reasonable inference, and unknown information.
- Prefer actual source code, tests, project documents, and official documentation over model memory.
- Preserve established project decisions unless evidence justifies changing them.
- When changing an existing design, explain the reason, impact, and migration cost.
- For bugs, identify the earliest incorrect state and likely root cause before patching symptoms.
- After implementation, validate behavior and check regression risk.
- Keep reusable guidance here; keep project-specific knowledge in the target project.

## Repository boundary

Do not add:
- project-specific APIs
- project-specific schemas
- project-specific architecture snapshots
- domain facts tied to one codebase
- temporary debugging notes

Project-specific agent assets should be generated inside the target project.
