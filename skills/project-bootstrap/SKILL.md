---
name: project-bootstrap
description: Inspect a target project and generate project-local agent guidance without contaminating Agent-Workbench with project-specific knowledge.
---

# project bootstrap

1. Read project README, AGENTS files, docs, build files, tests, and important source entry points.
2. Identify stable project-specific rules and workflows.
3. Determine which specialized skills or rules would materially help.
4. Generate them inside the target project only.
5. Link each generated rule to evidence from the current project.
6. Do not copy project-specific knowledge back into Agent-Workbench unless it is proven reusable across multiple unrelated projects.
