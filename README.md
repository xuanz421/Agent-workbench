# Agent-Workbench

A repository for reusable, cross-project agent workflows, rules, prompts, and adapters.

## Scope

Agent-Workbench provides **methods, not project knowledge**.

It contains:
- universal engineering skills
- semi-universal development workflows
- reusable agent roles
- source-verification and coding rules
- project-bootstrap tooling and templates
- UI/design-system workflows
- testing, dependency, security, migration, API, performance, release, and data-pipeline workflows
- adapters for Codex, ZCode, and OpenCode

It intentionally does **not** contain project-specific architecture, APIs, schemas, or domain knowledge.
Those should be generated or maintained inside each target project based on its current state.

## Design principles

1. **Universal first** — only keep content that is useful across multiple projects.
2. **Project knowledge stays local** — WorldBox, NewEra, WBKB, or other specialized knowledge belongs in those repositories.
3. **Generate specialization from the project** — use `project-bootstrap` to inspect a project and create local skills/rules when needed.
4. **Source before assumption** — prefer source code, project docs, tests, and official documentation over model memory.
5. **One canonical workflow** — avoid maintaining separate duplicate logic for Codex, ZCode, and OpenCode.
6. **Adapters are thin** — client-specific folders should only describe integration differences.
7. **UI guidance is project-local** — Workbench provides design methods; each project owns its actual `DESIGN.md` and visual system.
8. **Skills must earn their place** — use `skill-authoring` to avoid duplicate, overly narrow, or project-specific skills.

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

## Core skill set

### Engineering foundation

- `systematic-debugging`
- `root-cause-analysis`
- `planning`
- `code-review`
- `implementation-review`
- `refactoring`
- `documentation-sync`
- `repository-analysis`
- `project-bootstrap`

### Quality, safety, and operations

- `test-strategy` — choose the right test level based on risk instead of generating tests blindly.
- `dependency-analysis` — analyze coupling, version constraints, deprecations, and upgrade blast radius.
- `security-review` — review trust boundaries, injection, auth, secrets, unsafe I/O, subprocesses, and supply-chain risk.
- `database-migrations` — plan schema/data migrations with locking, backfill, compatibility, rollback, and rollout concerns.
- `performance-investigation` — measure first, locate bottlenecks, then optimize and re-measure.
- `api-contract-review` — review public or cross-component interface compatibility and migration impact.
- `release-readiness` — evaluate tests, config, migrations, observability, rollout risk, and recovery before release.
- `data-pipeline-review` — review ingestion/ETL/indexing pipelines for correctness, idempotency, schema evolution, and recovery.
- `agent-experience-review` — audit how easily agents can understand, run, debug, and safely modify a repository.

### Workbench maintenance

- `skill-authoring` — decide whether a workflow belongs in Workbench and create/review reusable `SKILL.md` files consistently.

### UI / Frontend

- `design-system-analysis` — discover the design system that actually exists in the target project.
- `ui-project-bootstrap` — generate or update a project-local `DESIGN.md` from current project evidence.
- `frontend-design` — create or substantially revise UI while following the established design language.
- `ui-review` — review hierarchy, consistency, responsiveness, accessibility, states, and design-system compliance.

## Project specialization flow

```text
Agent-Workbench
      ↓
load reusable methods
      ↓
enter target project
      ↓
inspect source/docs/tests/current rules
      ↓
project-bootstrap
      ↓
generate project-local specialized skills/rules
```

Generated project-specific content should stay in the target repository and should not be copied back into Agent-Workbench unless it has clearly become reusable across projects.

## UI workflow

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

`DESIGN.md` is project-local. It records the visual language of the target project rather than global Workbench preferences. A starter template is available at `templates/DESIGN.md`.

## Suggested engineering workflow

```text
repository-analysis / project-bootstrap
        ↓
planning
        ↓
implementation
        ↓
test-strategy
        ↓
implementation-review / code-review
        ↓
security-review / api-contract-review / database-migrations
        ↓
performance-investigation (when relevant)
        ↓
release-readiness
```

Not every task needs every skill. Invoke only the workflows relevant to the actual risk and scope.

## Status

Current stage: v0.3 — engineering quality and delivery skills added.
