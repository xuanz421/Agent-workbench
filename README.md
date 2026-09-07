# Agent-Workbench

A lightweight repository for reusable agent workflows, rules, prompts, roles, templates, and client adapters.

## What this project is for

Agent-Workbench gives coding agents a reusable baseline for working across different repositories and harnesses such as Codex, ZCode, and OpenCode.

Its core idea is simple:

> **Workbench provides methods; the target project provides knowledge.**

Generic engineering behavior lives here. Project-specific architecture, APIs, schemas, naming rules, domain knowledge, and recurring local workflows stay in the target repository.

When deeper specialization is needed, use `project-bootstrap` to inspect the target project and generate only the project-local guidance that is justified by its current source, documentation, tests, and tooling.

## Scope

Agent-Workbench contains:

- reusable engineering skills
- UI/design workflows
- a small set of reusable agent roles
- cross-project rules and source-verification behavior
- templates for project-local agent guidance
- thin integration adapters for supported agent harnesses

It intentionally does **not** try to become:

- a package manager
- a universal project knowledge base
- a large preset/registry system
- a replacement for project-local `AGENTS.md`, `DESIGN.md`, or specialized skills
- infrastructure that exists only to manage the Workbench itself

## Structure

```text
Agent-Workbench/
├─ AGENTS.md
├─ skills/
├─ agents/
├─ rules/
├─ prompts/
├─ templates/
├─ adapters/
└─ scripts/
```

## Core engineering skills

- `repository-analysis`
- `project-bootstrap`
- `planning`
- `systematic-debugging`
- `root-cause-analysis`
- `code-review`
- `implementation-review`
- `refactoring`
- `test-strategy`
- `dependency-analysis`
- `security-review`
- `database-migrations`
- `performance-investigation`
- `api-contract-review`
- `release-readiness`
- `data-pipeline-review`
- `documentation-sync`
- `agent-experience-review`
- `skill-authoring`

## UI / frontend skills

- `design-system-analysis`
- `ui-project-bootstrap`
- `frontend-design`
- `ui-review`

Typical UI flow:

```text
enter target frontend project
        ↓
design-system-analysis
        ↓
ui-project-bootstrap
        ↓
project-local DESIGN.md
        ↓
frontend-design
        ↓
ui-review
```

## Project adaptation

`project-bootstrap` is the main bridge between Workbench and a concrete repository.

```text
Agent-Workbench
      ↓
load reusable methods
      ↓
inspect target project
      ↓
build a confirmed / inferred / unknown project model
      ↓
decide whether specialization is actually needed
      ↓
reuse generic Workbench skills where possible
      ↓
create only necessary project-local rules / skills / agents / DESIGN.md / AGENTS.md
```

Bootstrap should not generate a large local agent framework by default. If generic Workbench behavior is already enough, it should stop after understanding the project.

## Repository boundary

Good candidates for this repository:

- debugging and investigation methods
- planning and review workflows
- testing and release methods
- source-verification rules
- UI/design-system methods
- broadly reusable database, API, dependency, security, and data workflows
- small templates and client integration guidance

Keep these in the target project instead:

- project-specific APIs and symbols
- schemas unique to one codebase
- architecture snapshots
- domain facts
- project naming rules
- recurring workflows that only make sense for one repository
- temporary debugging or implementation notes

## Current direction

The Workbench should remain small enough to understand and easy enough to copy, link, or load into different agent environments. New content is added only when it materially improves cross-project agent work.

Current stage: **v0.3 — generic engineering + UI toolbox, with project-local specialization through `project-bootstrap`.**
