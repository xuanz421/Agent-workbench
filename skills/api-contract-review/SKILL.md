---
name: api-contract-review
description: Review API contracts for compatibility, validation, error semantics, versioning, pagination, idempotency, authentication boundaries, and migration impact before changing public or cross-component interfaces.
---

# API Contract Review

Use this skill for HTTP APIs, RPC interfaces, SDK-facing methods, events/messages, public library interfaces, or contracts shared across independently changing components.

## Workflow

1. Identify producers, consumers, ownership boundaries, and existing contract definitions.
2. Read schemas, handlers, clients, tests, documentation, and compatibility conventions.
3. Separate implementation changes from contract changes.
4. Review request and response shapes, required/optional fields, defaults, nullability, validation, and error semantics.
5. Check backward and forward compatibility for existing consumers.
6. Review pagination, ordering, filtering, retries, timeouts, idempotency, and rate-limit behavior where relevant.
7. Review authentication and authorization expectations at the contract boundary.
8. For breaking changes, define versioning or migration strategy rather than silently replacing behavior.
9. Add or update contract tests for critical assumptions.
10. Document consumer-visible changes and deprecation timelines when appropriate.

## Review questions

- Can old consumers continue to work?
- Are new fields safely ignorable or optional where needed?
- Are errors machine-actionable and stable enough for clients?
- Are retries safe?
- Are identifiers and pagination semantics stable?
- Does the API leak internal implementation details unnecessarily?

Do not treat a cross-component interface as private merely because all code currently lives in one repository.