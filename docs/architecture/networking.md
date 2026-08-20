# Network Design

**Status:** Approved; implementation starts in Phases 3–4.

The infrastructure range is `10.10.0.0/16`. Role-based `/24` networks separate management, edge, application, mail, DNS, operations, and backup traffic. Docker uses `172.28.0.0/16` to avoid overlap.

## Routing principles

- Only edge, authoritative DNS, and mail roles accept public protocols.
- Application traffic originates from the edge role.
- Prometheus initiates collection from the operations zone.
- Collectors forward logs to Loki.
- Administration originates from approved management sources.
- A route does not imply permission; firewalls enforce role-specific access.

Enforcement uses hypervisor networks or AWS security groups, host UFW/nftables policy, and service-level binding and authentication.
