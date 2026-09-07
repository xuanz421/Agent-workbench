---
name: agent-experience-review
description: Audit how easily an AI coding agent can understand, configure, run, debug, and safely modify a repository. Review setup friction, agent guidance, commands, documentation, error recovery, and automation ergonomics.
---

# Agent Experience Review

Use this skill to evaluate whether a repository is easy and safe for coding agents to work in.

## Workflow

1. Read README, AGENTS files, contribution docs, build manifests, scripts, CI configuration, and developer tooling.
2. Determine the minimum path from fresh checkout to build, test, lint, and run.
3. Check whether commands are deterministic, documented, and executable without hidden tribal knowledge.
4. Review whether project rules clearly distinguish required constraints from optional guidance.
5. Check whether errors produced by setup/build/test workflows are actionable enough for an agent to recover.
6. Review discoverability of architecture docs, important entry points, generated files, migrations, and unsafe-to-edit files.
7. Check whether common tasks are automated rather than requiring long sequences of fragile manual steps.
8. Check whether the repository exposes source-of-truth commands instead of duplicating instructions across many documents.
9. Identify stale, conflicting, or overly broad agent guidance.
10. Produce prioritized improvements by impact and implementation cost.

## Review dimensions

- Setup friction
- Command discoverability
- Documentation quality
- Agent instruction quality
- Error recovery
- Source-of-truth clarity
- Automation coverage
- Safety boundaries
- Context efficiency

Do not optimize documentation only for agents if doing so would make the project harder for human contributors. Prefer guidance that serves both.