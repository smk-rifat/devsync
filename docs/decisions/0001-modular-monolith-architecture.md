# 1. Modular Monolith Architecture

- **Date**: 2026-10-31
- **Status**: Accepted

---

## Context
We are building DevSync, a team collaboration platform with multiple business domains:
- Identity & Access
- Organizations & Memberships
- Projects & Issues
- Discussions & Messaging
- Notifications & Outbox Events
- Search & AI Gateway

We need an architecture that supports deep learning, clean boundaries, fast local development, and simple debugging, while preparing us for enterprise-grade backend systems.

---

## Decision
We choose a **Modular Monolith** pattern using Java 21, Spring Boot 3, and PostgreSQL.

All logical modules will live within a single repository and run inside a single executable process, but with strict internal package and domain boundaries.

---

## Consequences & Trade-offs

### Advantages (Pros):
- **No Network Lag**: Internal module communication happens via in-memory Java method calls, not HTTP/gRPC network hops.
- **Atomic Transactions**: Multi-module database updates can share transactional context cleanly when needed.
- **Simple Local Development**: The whole system runs with one command (`./gradlew bootRun`) and one local PostgreSQL container.
- **Easy Refactoring**: Extracting a module to a microservice later is straightforward because module boundaries are already strictly enforced.

### Disadvantages (Cons):
- All modules share the same JVM heap and database connection pool.
- A bug causing high CPU or memory in one module can impact other modules.

---

## Alternatives Considered
- **Microservices**: Rejected for initial phases. Microservices introduce complex network partitions, eventual consistency, multi-repo management, and complex distributed tracing before core domain logic is even established.