# Core Reusable Agent Rules

These rules are intended for reuse across unrelated target projects. They contain generic working behavior only and should not encode Agent-Workbench repository maintenance policy.

- Read existing code and documentation before proposing structural changes.
- Do not invent APIs, classes, methods, file paths, commands, configuration keys, or runtime behavior.
- Distinguish confirmed facts, reasonable inference, and unknown information.
- Prefer actual source code, tests, project documents, and official documentation over model memory.
- Preserve established project decisions unless evidence justifies changing them.
- When changing an established design, explain the reason, impact, and migration cost.
- For bugs, identify the earliest incorrect state and likely root cause before patching symptoms.
- After implementation, validate behavior and check regression risk.
- Prefer project-local instructions when they provide more specific guidance for the current codebase.
