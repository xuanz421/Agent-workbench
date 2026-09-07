---
name: data-pipeline-review
description: Review batch, streaming, ETL/ELT, indexing, ingestion, and transformation pipelines for correctness, idempotency, schema evolution, data quality, incremental processing, observability, and recovery behavior.
---

# Data Pipeline Review

Use this skill for ingestion systems, ETL/ELT jobs, index builders, analytics pipelines, synchronization jobs, vectorization pipelines, or other data movement and transformation workflows.

## Workflow

1. Identify sources, transformations, sinks, ownership boundaries, and freshness requirements.
2. Trace identifiers, timestamps, schemas, nullability, ordering, deduplication, and partitioning through the pipeline.
3. Check whether retries and reruns are idempotent or safely deduplicated.
4. Review incremental loading, checkpoints, watermarks, pagination, and late-arriving data where applicable.
5. Review schema evolution and compatibility between producers, stored data, and consumers.
6. Define data-quality checks for completeness, validity, uniqueness, consistency, and referential expectations as relevant.
7. Check failure handling: partial writes, poison records, dead-letter behavior, resumability, and replay.
8. Review observability: counts, lag, throughput, error rate, skipped records, and reconciliation signals.
9. Check resource and cost behavior for large datasets, repeated scans, embeddings, external APIs, or expensive transformations.
10. Produce concrete findings, affected stages, evidence, and recommended verification.

## Rules

- Do not assume exactly-once behavior without evidence.
- Distinguish processing success from data correctness.
- Prefer reproducible transformations and explicit provenance for derived data.
- Treat re-indexing and re-embedding as migration operations when stored representations change.
- State uncertainty when source semantics or data guarantees are undocumented.