# DevSync — Testing Strategy

## 1. Testing Philosophy
We do not test manually with Postman alone. We write automated tests to prove our system rules and invariants cannot be broken.

---

## 2. The Test Pyramid (3 Types of Tests)

### Level 1: Unit Tests (Fast & Isolated)
- **Tool**: JUnit 5, Mockito, AssertJ.
- **Database**: **No database**. Pure Java logic in memory.
- **Speed**: ~1 millisecond.
- **What it tests**: State transitions, priority calculations, validation rules.

### Level 2: Integration Tests (Real Database)
- **Tool**: Spring Boot Test, Testcontainers (PostgreSQL).
- **Database**: Real PostgreSQL running in an isolated Docker container.
- **Speed**: ~100 milliseconds.
- **What it tests**: Real SQL queries, Flyway migrations, database constraints, transactions.

### Level 3: Security & Negative Tests
- **What it tests**: Verifies that bad requests are rejected.
- **Examples**:
  - Wrong password returns `401 Unauthorized`.
  - User from Company A accessing Company B's data returns `403 Forbidden`.
  - Violating unique constraints returns `409 Conflict`.

---

## 3. How to Run Tests
- Run all tests: `./gradlew test`