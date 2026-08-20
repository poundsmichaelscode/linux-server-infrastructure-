# Contributing

## Branches

- `main`: reviewed, phase-complete work.
- `feature/<scope>-<description>`: new work.
- `fix/<scope>-<description>`: corrections.
- `docs/<description>`: documentation.

Do not implement a future phase before its architecture and acceptance criteria are approved.

## Commits

Use small imperative Conventional Commits:

```text
docs: document repository security policy
feat(dns): add authoritative primary zone
test(mail): verify anonymous relay is denied
fix(nginx): preserve forwarding headers
```

## Pull requests

1. Explain what changed and why.
2. Identify security and rollback implications.
3. List validation commands and actual results.
4. Update relevant documentation.
5. Confirm no secrets or generated state are included.
6. Exclude unrelated changes.

## Definition of done

A phase is complete only when implementation, tests, expected results, common errors, troubleshooting guidance, security considerations, and changed files have been reviewed.
