# Maintaining the Alpine + Tini Project

This project uses GitHub Actions to automate builds.

## Setup Instructions

To ensure the automated build and Docker Hub description sync work correctly, you must set the following secrets in your GitHub repository:

| Secret Name | Description |
| :--- | :--- |
| `DOCKER_HUB_USERNAME` | Your Docker Hub username. |
| `DOCKER_HUB_TOKEN` | A Personal Access Token (PAT) with write access. |

## Manual Rebuilds
You can manually trigger a build from the **Actions** tab by selecting the "Docker Publish" workflow and clicking **Run workflow**.
