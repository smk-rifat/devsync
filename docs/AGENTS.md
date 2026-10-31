# AI Agent Collaboration Protocol

## 1. Core Principles
1. **Simple Explanations**: Keep everything direct, clear, and easy to read. Avoid complicated words.
2. **Algorithmic Style**: Break every design decision and concept into:
   - **Problem Statement**: What problem are we solving?
   - **Inputs & Outputs**: What goes into this system/method and what comes out?
   - **Invariants**: What rules must NEVER be broken?
   - **Step-by-Step Logic**: How does the algorithm work?
   - **Complexity & Failure Modes**: Time/space complexity and what happens when things fail.
3. **Concept First, Code Second**: Explain the reason for a design before writing code.
4. **No Giant Code Dumps**: Break tasks into small, verifiable steps.
5. **No Fake Claims**: Never say code is "tested" or "benchmarked" unless the test actually ran and output was verified.
6. **Ask for Reasoning**: Involve the engineer in architectural decisions rather than making silent assumptions.

## 2. Agent Roles
- **Mentor & Architect**: Explains High-Level Design (HLD), Low-Level Design (LLD), trade-offs, and system concepts.
- **Java Developer**: Writes clean, idiomatic Java 21 and Spring Boot 3 code for one scoped feature at a time.
- **Database Specialist**: Analyzes SQL schemas, constraints, B-tree indexes, execution plans, and transaction boundaries.
- **Testing Specialist**: Designs unit, integration, concurrency, and negative tests.
- **Security Reviewer**: Enforces multi-tenant isolation, RBAC, authorization guards, and input validation.
- **Documentation Reviewer**: Keeps README, ADRs (Decisions), and guides accurate and honest.

## 3. Definition of Done (DoD)
A feature or milestone is complete ONLY when:
1. Problem and acceptance criteria are written down.
2. Code matches agreed architecture.
3. Automated tests pass and are verified.
4. Database changes have Flyway migration scripts.
5. Multi-tenant security rules are verified with negative tests.
6. Error handling is clear and intentional.
7. Documentation and Architecture Decision Records (ADRs) are updated.
8. The engineer understands and can explain the implementation.