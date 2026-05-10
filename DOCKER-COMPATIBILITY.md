# Docker Compatibility

While this project is configured for **Podman** as the primary container engine, it remains **fully compatible with Docker**.

## Using Docker Instead of Podman

All commands work with Docker by simply replacing `podman` with `docker`:

### Quick Substitution

```bash
# Instead of:
podman-compose up web

# Use:
docker-compose up web
```

### Using the Same Files

The following files work with both Podman and Docker:
- `docker-compose.yml` - Standard compose format
- `Dockerfile` - Standard container format
- `.env` - Environment variables
- All configuration files

### Command Mapping

| Podman Command | Docker Equivalent |
|----------------|-------------------|
| `podman-compose up` | `docker-compose up` |
| `podman build` | `docker build` |
| `podman ps` | `docker ps` |
| `podman images` | `docker images` |
| `podman run` | `docker run` |

### Setup Script

The setup script checks for Podman first but you can manually use Docker:

```bash
# Skip the setup script and use Docker directly
docker-compose up web
```

### Makefile

The Makefile is designed for Podman but you can override it:

```bash
# Create an alias
alias podman-compose='docker-compose'

# Then use the Makefile normally
make build
make up
```

Or edit `Makefile.podman` line 4-7 to default to `docker-compose`:

```makefile
# Force Docker Compose instead of Podman
COMPOSE := docker-compose
```

## Why Podman?

While Docker works perfectly fine, Podman offers some advantages:

1. **Rootless by default** - Better security
2. **No daemon required** - Simpler architecture
3. **Systemd integration** - Easy service management
4. **Drop-in replacement** - Same commands and formats
5. **Open source** - Fully open source, no proprietary components

## Choosing Your Tool

| Use Podman If... | Use Docker If... |
|------------------|------------------|
| Running on Linux | Running on macOS/Windows |
| Want rootless containers | Have existing Docker workflows |
| Prefer daemonless | Need Docker Desktop features |
| Using RHEL/Fedora | Team standard is Docker |
| Want systemd integration | Prefer Docker ecosystem |

Both tools are excellent choices and this project supports both equally!

## Converting Documentation

If you prefer Docker terminology, mentally replace:
- "Podman" → "Docker"
- "podman-compose" → "docker-compose"
- "podman/" directory → "docker/" directory (though the files work the same)

All technical content applies to both tools.
