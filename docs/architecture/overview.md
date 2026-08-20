# Architecture Overview

**Status:** Approved design; implementation pending.

InfraForge separates Internet-facing edge, authoritative DNS, and mail roles from the private application and operations plane. This limits public ports, reduces lateral movement, and makes controls specific to each service.

| Role | Responsibility | Boundary |
|---|---|---|
| Edge | TLS and reverse proxy | Public-to-private web boundary |
| Application | Demo API and health endpoint | Private workload |
| DNS | Authoritative domain data | Public protocol, restricted administration |
| Mail | SMTP, submission and IMAPS | Public protocol, authenticated users |
| Operations | Metrics, logs and alerts | Private operational data |
| Management | SSH and automation | Restricted control plane |

## Constraints

- BIND9 is authoritative-only for public clients.
- The application is reachable through Nginx only.
- Observability endpoints stay private.
- Public mail waits for relay, reverse-DNS, authentication, and provider checks.
- Terraform owns cloud resources; Ansible owns host configuration.
