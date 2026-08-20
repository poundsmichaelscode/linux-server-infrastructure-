# ADR-001: Hybrid native and container deployment

- **Status:** Accepted
- **Date:** 2026-08-20

## Decision

Run Nginx, BIND9, Postfix, and Dovecot as native system services. Containerize the Node.js application and observability services where appropriate.

## Consequences

The project demonstrates Linux administration and containers without adding unnecessary mail and DNS networking complexity. Ansible must manage host configuration consistently.
