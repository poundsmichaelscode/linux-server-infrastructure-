# Secrets Management

Secrets include passwords, tokens, private keys, cloud credentials, Terraform state, and sensitive configuration values.

## Delivery

- Local lab: ignored environment files and Ansible Vault.
- GitHub Actions: protected environment secrets.
- AWS: IAM roles and encrypted secret storage.
- Terraform: inputs outside Git and protected remote state.

Example files contain names and safe placeholders only.

## Exposure response

1. Revoke or rotate the secret.
2. Determine exposure and use.
3. Remove it from history where appropriate.
4. Invalidate derived sessions.
5. Record cause and prevention without reproducing the secret.
