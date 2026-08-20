# Deployment Strategy

**Status:** Design only.

Local deployment precedes AWS. Every service change must pass syntax validation and tests before reload. Terraform plans require review, Ansible performs host configuration, and smoke tests verify deployments.

Cloud deployment will use a protected environment. Pull requests cannot automatically apply or destroy Terraform resources. Rollback is defined with each deployable component.
