# Solitairey Podman - Quick Reference

## Initial Setup
```bash
./podman-setup.sh              # Run once to initialize
```

## Production Mode (Port 8080)
```bash
podman-compose up web          # Start server
podman-compose up -d web       # Start in background
podman-compose down            # Stop server
podman-compose logs -f web     # View logs

# Or use built-in compose:
podman compose up web
podman compose up -d web
podman compose down
podman compose logs -f web
```

## Development Mode (Port 8000)
```bash
podman-compose --profile dev up dev    # Start dev server
# or:
podman compose --profile dev up dev
```

## Build Only
```bash
podman-compose --profile build run --rm builder
# or:
podman compose --profile build run --rm builder
```

## Makefile Shortcuts
```bash
make -f Makefile.podman help       # Show all commands
make -f Makefile.podman build      # Build production image
make -f Makefile.podman up         # Start production server
make -f Makefile.podman down       # Stop all services
make -f Makefile.podman dev        # Start development server
make -f Makefile.podman logs       # View logs
make -f Makefile.podman clean      # Clean up everything
make -f Makefile.podman rebuild    # Rebuild from scratch
make -f Makefile.podman test       # Test build
```

## Image Management
```bash
podman-compose build web                    # Build image
podman-compose build --no-cache web         # Build without cache
podman images | grep solitairey             # List images
podman system prune -a                      # Clean up unused images
podman rmi solitairey-web                   # Remove specific image
```

## Container Management
```bash
podman-compose ps                           # List containers
podman ps                                   # List running containers
podman ps -a                                # List all containers
podman-compose exec web sh                  # Shell into container
podman-compose restart web                  # Restart container
podman stats solitairey-web                 # View resource usage
podman inspect solitairey-web               # Inspect container
```

## Troubleshooting
```bash
podman-compose down -v                      # Remove volumes
podman-compose logs --tail=100 web          # Last 100 log lines
podman-compose exec web sh                  # Debug inside container
git submodule update --init --recursive     # Fix submodule issues
podman info                                 # Check Podman configuration
podman system reset                         # Nuclear option: reset everything
```

## Podman-Specific Commands
```bash
podman generate systemd --name solitairey-web  # Generate systemd service
podman pod list                                # List pods
podman system migrate                          # Migrate after Podman upgrade
podman unshare ls -l                          # Run command in user namespace
```

## Docker Compatibility
```bash
# Create aliases for Docker compatibility
alias docker=podman
alias docker-compose=podman-compose

# Check if running rootless
podman info | grep rootless
```

## URLs
- Production: http://localhost:8080
- Development: http://localhost:8000

## Files
- `docker-compose.yml` - Service definitions (Podman compatible)
- `Dockerfile` - Image build instructions (Podman compatible)
- `PODMAN.md` - Full documentation
- `.env` - Environment variables
- `podman/nginx.conf` - Web server config
- `Makefile.podman` - Podman-specific shortcuts
