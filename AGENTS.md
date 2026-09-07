# Agent-Workbench Repository Instructions

## Purpose

This file applies only when maintaining the `Agent-workbench` repository itself.

Agent-Workbench is a lightweight, reusable toolbox for coding and technical agents. It should remain project-agnostic and should not become a package manager, universal knowledge base, or framework whose main purpose is managing itself.

## Repository maintenance rules

- Keep reusable methods here; keep project-specific knowledge in the target project.
- Do not add project-specific APIs, schemas, architecture snapshots, domain facts, or temporary debugging notes.
- Do not duplicate the same generic workflow for different clients; keep client-specific differences in adapters only.
- Reuse an existing Skill, Rule, Prompt, Agent, or template before creating another artifact with overlapping responsibility.
- Prefer the smallest useful artifact over unnecessary management infrastructure.
- Before adding a new Skill, verify that it is reusable across unrelated projects or is a broadly reusable semi-universal capability.
- When a capability becomes project-specific, generate or maintain it in the target project instead of extending Workbench with stale project knowledge.

## Design test for new content

Before adding something to this repository, ask:

1. Will unrelated projects reuse this?
2. Is this a reusable method rather than project knowledge?
3. Does an existing artifact already cover the responsibility?
4. Is this the smallest useful form: Rule, Prompt, Skill, Agent, template, or adapter?
5. Does it improve how agents actually work rather than only making the repository look more complete?

If not, keep it out of Agent-Workbench.
