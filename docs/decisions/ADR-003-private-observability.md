# ADR-003: Private observability

- **Status:** Accepted
- **Date:** 2026-08-20

## Decision

Bind metrics, logs, dashboards, and exporters to operations networks. Permit access only from approved collection and management sources.

## Consequences

Administration requires a controlled path such as a management host, VPN, or SSH tunnel, materially reducing attack surface.
