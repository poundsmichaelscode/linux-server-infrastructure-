# Security Model

**Status:** Baseline approved; implementation begins in Phase 3.

Internet traffic is untrusted. Application containers receive no direct public traffic. Operations data is sensitive, and management access receives the strongest restriction.

Controls include default-deny inbound firewalls, SSH keys, disabled remote root access, least privilege, minimal services, dedicated identities, restrictive permissions, TLS, Fail2ban, authoritative-only DNS, and anti-relay mail rules.

Security claims require evidence: open-port checks, firewall inspection, service tests, TLS probes, permission audits, secret scanning, container scans, and mail relay tests.
