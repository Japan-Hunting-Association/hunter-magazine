# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Hunter Magazine is a magazine project workspace using Docker/devcontainer for a consistent development environment. The project includes design files in Affinity Publisher format (.afpub) and integrates with GitHub CLI for workflow automation.

## Development Environment

### Starting the Environment

```bash
# Build and start the Docker container
docker-compose up -d

# Enter the container
docker exec -it hunter-magazine-agent bash
```

### Container Details

- Base image: Node.js 20 (slim)
- Pre-installed tools: Git, GitHub CLI (gh), curl, jq, build-essential, Claude Code CLI
- Working directory: `/app`
- GitHub CLI authentication is mounted from `./.gh` (requires `GH_TOKEN` environment variable)

### Using DevContainer

This project supports VS Code DevContainer. Open the project in VS Code and use "Reopen in Container" to automatically set up the environment.

## Project Structure

```
/app/
├── vol.1/               # Magazine volume 1
│   ├── contents/        # Content files (empty for now)
│   └── draft/           # Design drafts
│       └── hunter_magazine_001.afpub  # Affinity Publisher design file
├── assets/              # Shared assets
└── .gh/                 # GitHub CLI configuration (mounted, not in git)
```

## Working with Design Files

- Main design file: `vol.1/draft/hunter_magazine_001.afpub`
- Format: Affinity Publisher document (requires Affinity Publisher to edit)
- Sample images are located in `vol.1/draft/`

## GitHub Integration

The environment includes GitHub CLI pre-configured with token authentication:
- Set `GH_TOKEN` environment variable before starting container
- Authentication data is persisted in `.gh/` directory (gitignored)
- Use `gh` commands for GitHub operations

## Volume Management

The `node_modules` directory is managed as a Docker named volume to improve performance and avoid permission issues between host and container.
