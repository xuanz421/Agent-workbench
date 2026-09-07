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

## Initial skill set

- `systematic-debugging`
- `root-cause-analysis`
- `planning`
- `code-review`
- `implementation-review`
- `refactoring`
- `documentation-sync`
- `repository-analysis`
- `project-bootstrap`

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

## Status

Current stage: v0.1 bootstrap.
