# DevSync — Project Context

## 1. What is DevSync?
DevSync is a team collaboration and engineering workflow platform. It combines useful ideas from GitHub Issues, Slack, Discord, and project management tools into one unified system.

Teams use DevSync to:
- Organize projects and issues.
- Discuss problems in context.
- Track status and history of changes.
- Get notifications without noise or loss.
- Use AI features safely without exposing private organization data.

## 2. Who is Building This?
- **Developer Background**: Non-CS graduate (B.Sc. in Petroleum & Mining Engineering, 2024).
- **Current Role**: Backend Developer at Swosti Limited (Dhaka, Bangladesh).
- **Experience**: REST APIs, MVC, Maven, Java, Spring Boot, MySQL/PostgreSQL migration, ClickHouse reporting, LeetCode / GFG algorithmic problem solving.
- **Goal**: Become a solid, competitive backend engineer and have fun solving backend engineering problems 

## 3. Engineering Philosophy
1. **First-Principles**: Understand *why* something works before using it.
2. **Algorithmic Thinking**: Model backend components as algorithms (Inputs, Outputs, State Invariants, Time/Space Complexity, and Failure Modes).
3. **Evidence-Based**: No unverified claims. Every performance or reliability statement must have test logs or measurement scripts.
4. **No Premature Complexity**: Start with a clean Modular Monolith. Do not jump to microservices without a proven need.

## 4.Target Technology Stack (Learning Objectives)
- **Language**: Java 21 (LTS)
- **Framework**: Spring Boot 3.x
- **Build Tool**: Gradle (using the Gradle Wrapper `gradlew`)
- **Primary Database**: PostgreSQL 16
- **Persistence**: Spring Data JPA & Hibernate, Flyway migrations
- **Testing**: JUnit 5, Mockito, AssertJ, Testcontainers
- **Local Infrastructure**: Docker & Docker Compose

## 5. System Architecture
- **Pattern**: Modular Monolith.
- **Logical Modules**:
  - `identity`: User registration, authentication, JWT/session handling.
  - `organization`: Tenant management, memberships, role-based access control (RBAC).
  - `project`: Project workspaces, permissions, membership mapping.
  - `issue`: Issue tracking, state transitions, assignments, comments.
  - `discussion`: Project discussion threads, messaging.
  - `notification`: Event-driven notifications, delivery tracking.
  - `outbox`: Reliable asynchronous event publishing (Transactional Outbox Pattern).
  - `ratelimit`: Distributed rate limiting (Token Bucket via Redis).
  - `search`: Keyword and vector search (PostgreSQL full-text, pgvector).
  - `ai-gateway`: Tenant-isolated LLM proxy with cost/token budgets.
  - `audit`: Immutable event logging for sensitive operations.

## 6. Current Status
- **Active Phase**: Phase 0 — Environment, Workflow, and Baseline Setup.