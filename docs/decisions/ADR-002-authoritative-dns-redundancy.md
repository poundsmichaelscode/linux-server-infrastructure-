# ADR-002: Two authoritative DNS servers

- **Status:** Accepted
- **Date:** 2026-08-20

## Decision

Use primary and secondary BIND9 servers in separate failure domains. Restrict zone transfers and disable public recursion.

## Consequences

Availability improves, while cost and synchronization duties increase. A low-resource lab may consolidate roles but cannot claim that consolidation is redundant.
