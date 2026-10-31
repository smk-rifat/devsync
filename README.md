# DevSync
> A production oriented team collaboration and engineering workflow platform build with Java 21, Springboot 3, and postgresql

Devsync is designed as a deep learning journey and portfolio project to master modern backend engineering, Low level design(LLD), High level design (HLD), database internals, multi-tenancy, and distributed reliability.

## Project Goals
- **Architectural Excellence**: Clean Modular Monolith with strictly separated domain modules
- **Data Integrity & Multi-tenancy**: Strong Database constrains, tenant-isolated data queries, and verified query test.
- **Reliability and consistency**: Transaction outbox pattern, optimistic locking, idempotent endpoints and distributed rate limiting.

## Tech Stack
- **Language**: Java 21 (LTS)
- **Framework**: Spring Boot 3.x
- **Build Tool**: Gradle (with Gradle Wrapper)
- **Database**: PostgreSQL 16

## Repository Structure
```
devsync/
├── docs/                      # Architectural docs, roadmap, decisions
│   ├── PROJECT_CONTEXT.md     # Product goals and design philosophy
│   ├── ROADMAP.md             # 15-phase implementation plan
│   ├── AGENTS.md              # AI collaboration protocol & rules
│   ├── ARCHITECTURE.md        # Current implemented architecture
│   ├── SECURITY.md            # Threat model & isolation strategy
│   ├── TESTING.md             # Testing conventions and test commands
│   ├── CHANGELOG.md           # Verifiable change history
│   ├── KNOWN_ISSUES.md        # Known debt and future items
│   ├── decisions/             # Architecture Decision Records (ADRs)
│   └── benchmarks/            # Reproducible benchmark reports
├── src/                       # Application source code (coming in Phase 0)
├── docker-compose.yml         # Local dependencies (Postgres)
└── README.md
```
---

## 🚦 Roadmap Progress
We follow a 15-phase roadmap. Currently on:
- **Phase 0**: Environment, Workflow & Baseline Setup (`IN PROGRESS`)

