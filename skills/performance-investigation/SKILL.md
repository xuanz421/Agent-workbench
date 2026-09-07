---
name: performance-investigation
description: Investigate performance regressions and bottlenecks by measuring first, locating hotspots, validating hypotheses, and optimizing only where evidence shows meaningful impact.
---

# Performance Investigation

Use this skill for latency, throughput, memory, CPU, rendering, startup, database, or scalability problems.

## Workflow

1. Define the symptom and success metric before changing code.
2. Reproduce under representative conditions.
3. Measure baseline behavior with the project's existing profiling, tracing, logging, benchmark, or monitoring tools.
4. Separate CPU, memory, I/O, network, database, rendering, allocation, synchronization, and algorithmic causes as relevant.
5. Locate the dominant hotspot or wait source.
6. Form a specific hypothesis and predict the measurable effect of a change.
7. Apply the smallest change that tests or fixes the hypothesis.
8. Measure again using the same conditions.
9. Check correctness and regression risk after optimization.
10. Record tradeoffs when performance improvements increase complexity, memory use, caching, or operational cost.

## Rules

- Do not optimize from intuition alone when measurement is possible.
- Prefer removing unnecessary work before micro-optimizing syntax.
- Distinguish local benchmark wins from real user/system impact.
- Treat caching as a consistency and invalidation problem, not a free optimization.
- Preserve representative benchmark inputs and methodology when reporting improvement.

If the bottleneck cannot be reproduced or measured, state that limitation rather than presenting speculative optimization as a confirmed fix.