---
name: release-readiness
description: Evaluate whether a change or version is ready to release by checking tests, migrations, compatibility, configuration, observability, documentation, rollout risk, and recovery plans.
---

# Release Readiness

Use this skill before shipping a significant feature, version, migration, or operationally sensitive change.

## Workflow

1. Identify the exact release scope and changed components.
2. Review test results and unresolved failures relevant to the release.
3. Check configuration, environment variables, feature flags, secrets, and deployment prerequisites.
4. Review database migrations and deployment ordering when applicable.
5. Check compatibility for public APIs, persisted data, clients, plugins, and integrations.
6. Confirm logs, metrics, traces, health checks, or other observability needed to detect failure after release.
7. Identify irreversible actions, data-loss risk, and rollback or forward-fix strategy.
8. Verify user-facing and operator-facing documentation where behavior changed.
9. Define rollout scope: immediate, staged, canary, feature-flagged, or other project-appropriate method.
10. Produce a concise readiness verdict with blockers, risks, and follow-up items.

## Verdicts

- READY: no known blocking issue; residual risks are understood.
- READY WITH CONDITIONS: safe only if named conditions or rollout controls are followed.
- NOT READY: unresolved blocker could cause correctness, security, compatibility, data, or operational failure.

Do not use a passing build alone as evidence that a release is ready.