---
name: dependency-analysis
description: Analyze project dependencies, version constraints, coupling, transitive risk, deprecations, and upgrade impact before adding, removing, or changing dependencies.
---

# Dependency Analysis

Use this skill for dependency upgrades, dependency removal, package conflicts, build breakage, or architectural coupling questions.

## Workflow

1. Read the project's dependency manifests, lockfiles, build configuration, and relevant imports/usages.
2. Separate direct dependencies from transitive dependencies.
3. Identify why each affected dependency exists and which modules depend on it.
4. Check version constraints, runtime/toolchain compatibility, and known deprecation or migration requirements using authoritative sources when current verification is needed.
5. Estimate blast radius before changing versions or replacing a package.
6. Prefer removing redundant dependencies over adding overlapping ones.
7. Preserve lockfile and package-manager conventions already used by the project.
8. After a change, run the narrowest relevant build/tests first, then broader verification if necessary.
9. Record breaking changes, required migrations, and rollback considerations.

## Review questions

- Is this dependency necessary?
- Is the project relying on undocumented or deprecated behavior?
- Does the upgrade change public APIs, generated code, build tools, runtime requirements, or data formats?
- Are multiple packages solving the same problem?
- Could a transitive dependency change introduce security, license, or compatibility risk?

Do not perform blind bulk upgrades unless explicitly requested.