---
name: database-migrations
description: Plan and review safe database schema and data migrations with compatibility, rollback, locking, backfill, deployment order, and zero-downtime concerns in mind.
---

# Database Migrations

Use this skill for schema changes, large data backfills, type changes, renames, index changes, or deployment sequences that depend on database state.

## Workflow

1. Inspect the actual database technology, migration framework, schema, deployment model, and current conventions.
2. Separate schema migration, application rollout, and data backfill when they have different risk profiles.
3. Check forward and backward compatibility between old and new application versions.
4. For risky renames, removals, or type changes, prefer expand-and-contract where practical.
5. Estimate lock duration, table rewrite risk, index build cost, transaction size, and large-table behavior.
6. Make backfills restartable, observable, and bounded when datasets may be large.
7. Decide whether rollback is safe; otherwise define an explicit forward-fix path.
8. Never edit an already-applied migration casually; follow the project's migration discipline.
9. Test migrations against representative data and verify application behavior before and after.
10. Document deployment order and irreversible steps.

## Safety questions

- Can old code run against the new schema during rollout?
- Can new code run before the migration is complete?
- Will this operation lock or rewrite a large table?
- What happens if the deployment stops halfway?
- Is the backfill idempotent or restartable?
- Is rollback actually possible without data loss?

Do not assume a migration is safe merely because it succeeds on an empty development database.