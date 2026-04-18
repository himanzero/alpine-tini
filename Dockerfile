# Use the latest Alpine image as base
FROM alpine:latest

# Metadata
LABEL maintainer="himanzero"
LABEL description="Alpine Linux with Tini init"
LABEL org.opencontainers.image.source="https://github.com/himanzero/alpine-tini"
LABEL org.opencontainers.image.description="Alpine Linux with Tini init"

# Install tini via apk
# --no-cache avoids storing the cache locally, keeping the image small
RUN apk add --no-cache tini

# Use Tini as the entrypoint to handle signals and reap zombies
# Tini will run as PID 1 and forward signals to its child processes
ENTRYPOINT ["/sbin/tini", "--"]

# Default command to run
# This can be overridden when running the container
CMD ["/bin/sh" "-l"]
