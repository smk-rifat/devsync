# DevSync — Architecture Overview

## 1. Architectural Style: Modular Monolith
DevSync is designed as a **Modular Monolith**.

### Why a Modular Monolith instead of Microservices?
- **No Network Lag**: Internal modules communicate with direct Java method calls, not HTTP or gRPC over the internet.
- **Easy Transactions**: Multi-module database updates can share transactional context cleanly when needed.
- **Simple Local Development**: The whole system runs with one command (`./gradlew bootRun`) and one local PostgreSQL container.
- **Clean Boundaries**: If a module ever needs to scale independently in the future, it can be extracted cleanly into its own service because the boundaries are already strict.

---

## 2. High-Level Design (HLD) Diagram

```
+--------------------------------------------------------------+
|                     Spring Boot 3 Application                |
|                                                              |
|  +------------+   +--------------+   +--------------------+  |
|  |  Identity  |   | Organization |   |  Projects & Issues |  |
|  +------------+   +--------------+   +--------------------+  |
|                                                              |
|  +------------+   +--------------+   +--------------------+  |
|  | Rate Limit |   |    Outbox    |   |   Notifications    |  |
|  +------------+   +--------------+   +--------------------+  |
+--------------------------------------------------------------+
                               |
                               v
                     PostgreSQL 16 Database
```

---

## 3. The Core Rules (Invariants)
1. **Rule of Data Encapsulation**: A module can only access its own database tables. It cannot run SQL queries against another module's tables.
2. **Rule of Public Interfaces**: When Module A needs data from Module B, it must call Module B's public Java Interface (e.g., `UserService.findUserById(id)`).
3. **Rule of Event Publishing**: When a domain event occurs (e.g. `ISSUE_ASSIGNED`), the module writes to the Outbox table rather than calling external services directly.

---

## 4. Current Status
- **Phase**: Phase 0 — Environment and Baseline Setup.
- No business logic modules implemented yet.