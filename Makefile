# Default Makefile - delegates to Podman-specific Makefile
# This provides shorter commands: 'make build' instead of 'make -f Makefile.podman build'

include Makefile.podman

.DEFAULT_GOAL := help

# Override to show both traditional and container build options
help:
	@echo "Solitairey Build Commands"
	@echo "=========================="
	@echo ""
	@echo "Traditional Build:"
	@echo "  make traditional    - Run traditional rake build"
	@echo ""
	@echo "Podman/Container Build:"
	@echo "  make build          - Build production image"
	@echo "  make up             - Start production server (port 8080)"
	@echo "  make down           - Stop all services"
	@echo "  make dev            - Start development server (port 8000)"
	@echo "  make logs           - View production logs"
	@echo "  make clean          - Remove containers and volumes"
	@echo "  make rebuild        - Clean rebuild from scratch"
	@echo "  make test           - Run build test"
	@echo "  make shell          - Open shell in production container"
	@echo "  make dev-shell      - Open shell in development container"
	@echo ""
	@echo "Note: Podman commands work with Docker too (use docker-compose)"

traditional:
	bash -ex bin/install-npm-deps.sh
	rake
