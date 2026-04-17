# Alpine Tini

A minimal Docker image based on [Alpine Linux](https://alpinelinux.org/) with [Tini](https://github.com/krallin/tini) installed as the init process.

## Why Tini?

Tini is a tiny init process that helps:
- Reap zombie processes.
- Forward signals to child processes.
- Handle process termination correctly.

## Tags

This image is automatically built and tagged:
- `latest`: Always points to the newest build.
- `<alpine-version>`: Points to the specific version of Alpine used (e.g., `3.19.1`).

## Usage

You can use this as a base for your own Dockerfiles:

```dockerfile
FROM himanzero/alpine-tini:latest

# Your configuration here
```

## Automated Rebuilds

This repository uses GitHub Actions to:
1. Check for updates to the upstream `alpine:latest` image daily.
2. Rebuild and push to Docker Hub automatically when an update is detected.
3. Handle version tagging dynamically based on the Alpine release string.

## Setup Instructions

To use the automated build, you must set the following secrets in your GitHub repository:
- `DOCKER_HUB_USERNAME`: Your Docker Hub username.
- `DOCKER_HUB_TOKEN`: A Personal Access Token (PAT) with write access.
