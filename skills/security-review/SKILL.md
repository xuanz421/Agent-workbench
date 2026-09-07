---
name: security-review
description: Review code and architecture for trust-boundary failures, injection, authentication and authorization flaws, secret exposure, unsafe file or network handling, dangerous subprocess use, and dependency security risk.
---

# Security Review

Use this skill when reviewing code that crosses trust boundaries, handles credentials, executes commands, processes external input, performs privileged actions, or exposes network/file interfaces.

## Workflow

1. Identify entry points and trust boundaries.
2. Trace untrusted input through parsing, validation, authorization, side effects, storage, and output.
3. Review authentication and authorization separately.
4. Check for injection classes: SQL, shell/command, template, path, header, URL, and code injection as relevant.
5. Review filesystem access, archive extraction, redirects, SSRF exposure, deserialization, and subprocess execution.
6. Check secret handling, logs, configuration, error messages, and accidental credential exposure.
7. Review insecure defaults, privilege scope, and fail-open behavior.
8. Review dependency and supply-chain risk when the task touches packages or build tooling.
9. Prioritize findings by exploitability, impact, reachability, and confidence.
10. Recommend the smallest reliable remediation and relevant regression tests.

## Evidence rules

- Distinguish confirmed vulnerabilities from suspicious patterns that require verification.
- Do not claim exploitability without a plausible reachable path.
- Cite concrete files, functions, configuration, or execution paths when available.
- Do not weaken existing controls merely to simplify implementation.

Security review complements code review; it does not replace correctness, maintainability, or architecture review.