---
name: project-bootstrap
description: Inspect a target project, identify its actual engineering needs, and generate only the project-local agent guidance that is justified by current source, documentation, tests, and tooling.
---

# Project Bootstrap

Use this when entering an unfamiliar or substantially changed project and the generic Workbench needs to adapt to that repository.

The goal is not to generate a large agent framework. The goal is to understand the project well enough to create only the local guidance that materially improves future work.

## 1. Establish the project baseline

Inspect the strongest available evidence first:

- existing `AGENTS.md` or equivalent agent instructions
- README and architecture/design documentation
- build manifests and dependency files
- repository structure and important entry points
- tests and test configuration
- CI/build scripts when they reveal expected workflows
- representative implementation files for major subsystems
- existing UI/design configuration when frontend work is relevant

Do not assume framework, architecture, naming rules, commands, or APIs from model memory when the repository can answer the question.

## 2. Build a compact project model

Separate findings into:

### Confirmed
Facts directly supported by source, configuration, tests, or project documentation.

### Inferred
Relationships strongly suggested by evidence but not explicitly confirmed.

### Unknown
Important questions that cannot yet be established from available evidence.

Identify only what is useful for future work:

- technology stack and build/run/test commands
- major modules and responsibility boundaries
- important conventions and invariants
- persistence, API, UI, data, plugin, or extension boundaries when present
- high-risk areas where generic agent behavior is insufficient

## 3. Decide whether specialization is actually needed

Do not generate project-local assets automatically just because bootstrap was invoked.

Create local guidance only when at least one of these is true:

- the project has stable rules that agents are likely to violate without explicit guidance
- the project has a recurring domain-specific workflow
- correct work requires repository-specific source priority or verification rules
- the project has architecture boundaries that generic skills cannot infer reliably on every task
- a recurring task would otherwise require repeatedly rediscovering the same project facts

If generic Workbench skills are already sufficient, stop after producing the project model.

## 4. Choose the smallest appropriate local artifact

Prefer the lightest mechanism that solves the problem:

- **Rule** — a stable constraint or invariant
- **Prompt/command** — a reusable task invocation with little workflow logic
- **Skill** — a recurring multi-step project-specific workflow
- **Agent** — a distinct role that needs a stable responsibility and skill selection pattern
- **DESIGN.md** — project-local visual/design language when UI work requires it
- **AGENTS.md** — broad project-level instructions only when repository-wide guidance is justified

Do not turn every discovery into a Skill.

## 5. Generate locally, from current evidence

Project-specific assets must live in the target repository, not Agent-Workbench.

Each generated asset should:

1. state its purpose and trigger clearly
2. reference the project evidence it was derived from where practical
3. avoid claims that were only inferred unless labeled as such
4. avoid duplicating generic Workbench workflows
5. encode stable knowledge, not temporary debugging observations
6. remain small enough to update when the project changes

When adapting an existing local asset, preserve established project decisions unless current evidence justifies a change.

## 6. Select generic Workbench capabilities instead of duplicating them

Where applicable, reuse existing generic skills such as:

- `repository-analysis`
- `planning`
- `systematic-debugging`
- `root-cause-analysis`
- `test-strategy`
- `security-review`
- `dependency-analysis`
- `database-migrations`
- `performance-investigation`
- `api-contract-review`
- `data-pipeline-review`
- `frontend-design`
- `ui-review`

A project-local skill may define when or how these are used in this repository, but should not copy their generic workflow wholesale.

## 7. Bootstrap output

At the end, report:

- confirmed project model
- important inferred/unknown items
- generic Workbench skills that are relevant
- project-local assets created or updated, if any
- why each local asset was necessary
- anything deliberately not generated because generic guidance was sufficient

## Boundary

Never copy project-specific APIs, schemas, architecture snapshots, domain facts, or temporary notes back into Agent-Workbench merely because they were useful during bootstrap.

Promote something back to Workbench only when it has clearly become reusable across multiple unrelated projects.