# CI/CD Strategy

**Status:** Approved; implementation starts in Phase 14.

Pull requests will perform linting, configuration validation, tests, secret scanning, dependency checks, infrastructure validation, and container builds.

```text
lint -> validate -> test -> scan -> build -> approve -> deploy -> smoke test
```

Terraform destruction is never automated. Apply requires explicit review. Failed smoke tests stop promotion and initiate the documented rollback procedure.
