.DEFAULT_GOAL := help

.PHONY: help phase-status check-no-secrets

help:
	@echo "InfraForge Phase 2 commands"
	@echo "  make phase-status     Show current milestone"
	@echo "  make check-no-secrets Find sensitive candidate filenames"

phase-status:
	@echo "Phase 2: Repository Foundation"

check-no-secrets:
	@find . -path './.git' -prune -o -type f \( -name '.env' -o -name '*.tfstate' -o -name '*.tfvars' -o -name '*.pem' -o -name '*.key' \) -print
	@echo "Review output; any fixture or example exception must be intentional."
