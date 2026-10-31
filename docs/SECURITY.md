# DevSync — Security & Multi-Tenant Isolation Model

## 1. What is Multi-Tenancy?
A **tenant** is an organization or company (e.g., Company A, Company B).
DevSync is a multi-tenant application: multiple companies use the same database, but their data must be **strictly isolated**.

---

## 2. The Threat: IDOR (Insecure Direct Object Reference)
Imagine an attacker logs in to Company A. 
They notice an API request:
```text
GET /api/v1/issues/42
```
The attacker changes the ID to `43`:
```text
GET /api/v1/issues/43
```
* If Issue 43 belongs to **Company B**, a vulnerable server returns Company B's private issue!
* **DevSync Invariant**: The server must verify that Issue 43 belongs to the user's current organization. If it belongs to another company, DevSync must reject the request with `404 Not Found` or `403 Forbidden`.

---

## 3. Authentication vs. Authorization

| Term | Question it Answers | Example in DevSync |
|---|---|---|
| **Authentication** | *"Who are you?"* | Verifying email and password to issue a secure session or JWT token. |
| **Authorization** | *"What are you allowed to do?"* | Can this user delete a project? (Only `ADMIN` or `OWNER` can do that). |

---

## 4. Role-Based Access Control (RBAC)
Within each organization, users have clear roles:
- **`OWNER`**: Full billing, organization deletion, and member management.
- **`ADMIN`**: Create/delete projects, manage members, configure settings.
- **`MEMBER`**: Create and edit issues, post comments, join discussions.
- **`VIEWER`**: Read-only access to projects and issues.

---

## 5. Security Testing Rule: Negative Tests
A test suite that only tests successful requests (`200 OK`) is **incomplete**.
In DevSync, we write **Negative Tests**:
1. An unauthenticated request cannot access any private endpoint.
2. A user from Company A cannot read or modify Company B's issues.
3. A `VIEWER` cannot delete an issue (must return `403 Forbidden`).