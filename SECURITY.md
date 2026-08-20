# Security Policy

InfraForge is a learning and portfolio platform, not a pre-certified production distribution. Every deployment requires review for its domain, users, cloud account, and regulatory context.

## Non-negotiable controls

- Never commit credentials, Terraform state, private SSH/TLS/DKIM keys, tokens, or real environment files.
- Replace `example.com` only with a domain you control.
- Never expose application, Grafana, Prometheus, Loki, exporters, or Docker APIs publicly.
- Never allow unauthenticated SMTP relay to arbitrary destinations.
- Do not disable working SSH authentication until key access is verified separately.
- Do not run unreviewed `terraform apply` or `terraform destroy` from pull requests.

## Secrets delivery

- Local: ignored `.env` files and Ansible Vault.
- GitHub: environment-scoped GitHub Secrets.
- AWS: IAM roles and an approved encrypted secret store.
- Terraform: protected input and state outside version control.

If a secret enters Git, revoke or rotate it immediately. Removing one line does not invalidate an exposed credential.

## Reporting vulnerabilities

Do not open a public issue containing an exploit, credential, private host, public IP, or personal information. Use private vulnerability reporting when enabled and include the affected component, reproduction conditions, impact, and possible mitigation.
