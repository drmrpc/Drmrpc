FROM ghcr.io/m1k1o/neko/xfce:latest

# Install additional tools if needed
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    git \
    && rm -rf /var/lib/apt/lists/*

# Expose the default n.eko port
EXPOSE 8080

# The base image handles the startup, no need to override CMD
