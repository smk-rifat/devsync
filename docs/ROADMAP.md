# DevSync — Master Roadmap
This roadmap defines the step-by-step milestones to build DevSync.
---

### Phase 0: Environment & Workflow (IN PROGRESS)
* **Objective**: Reproducible dev setup (Java 21, Gradle, Docker, Postgres, CI).

### Phase 1: Core Java & Fundamentals (Not Started)
* **Objective**: Domain modeling, OOP/SOLID, collections, immutability, unit tests.

### Phase 2: Database & SQL Engineering (Not Started)
* **Objective**: Relational schema, indexes, EXPLAIN ANALYZE, concurrency locks.

### Phase 3: Auth & Tenant Isolation (Not Started)
* **Objective**: Multi-tenancy, RBAC, secure scoping, negative security tests.

### Phase 4: Core Product Workflows (Not Started)
* **Objective**: Projects, issues, state machines, comments, REST APIs.

### Phase 5: Concurrency & Idempotency (Not Started)
* **Objective**: Optimistic locking, idempotency keys, duplicate request safety.

### Phase 6: Distributed Rate Limiter (Not Started)
* **Objective**: Token bucket algorithm, Redis integration, 429 Retry-After.

### Phase 7: Reliable Async Processing (Not Started)
* **Objective**: Transactional outbox pattern, message broker, dead-letter recovery.

### Phase 8: Webhooks & Reconciliation (Not Started)
* **Objective**: Secure signatures, deduplication, reconciliation batch jobs.

### Phase 9: Real-Time Collaboration (Not Started)
* **Objective**: WebSockets/SSE, subscription authorization, reconnects.

### Phase 10: Search & AI Gateway (Not Started)
* **Objective**: Full-text + semantic search (pgvector), token budgets, fallbacks.

### Phase 11: Observability & Profiling (Not Started)
* **Objective**: OpenTelemetry, Prometheus metrics, structured logs, RED metrics.

### Phase 12: Load Testing & Chaos (Not Started)
* **Objective**: k6 load benchmarks, failure injection, recovery verification.

### Phase 13: Production Deployment (Not Started)
* **Objective**: Docker image, migrations in CI/CD, graceful shutdown, health probes.

### Phase 14: Architecture Case Studies (Not Started)
* **Objective**: 3 deep recruiter-ready case studies with benchmark data.

---

## Phase 0 Detailed Milestones (Active)
- [] Step 0.1: Git initialization & shared documentation framework.
- [ ] Step 0.2: Gradle build setup with Spring Boot 3 & Java 21 toolchain.
- [x] Step 0.3: Docker Compose configuration for PostgreSQL 16.
- [ ] Step 0.4: Spring Boot application startup & database smoke test.
- [ ] Step 0.5: GitHub Actions CI workflow script.
- [ ] Step 0.6: Verification & documentation sign-off.