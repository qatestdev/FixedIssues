# This file contains issues that can be detected by Dockerfile tools

# Using latest tag
FROM ubuntu:latest

# Running as root
USER root

# Using ADD instead of COPY
ADD . /app

# Using apt-get without cleanup
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    nodejs \
    npm

# Not removing apt cache
# RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Using sudo
RUN sudo apt-get install curl

# Exposing a high numbered port
EXPOSE 65535

# Multiple FROM statements
FROM alpine:latest

# Using curl without checking result
RUN curl -sL https://example.com/install.sh | bash

# Using environment variables with secrets
ENV API_KEY="super-secret-key"
ENV PASSWORD="password123"

# Using wget to pipe to bash
RUN wget -qO- https://example.com/install.sh | bash

# No specific version for base images
FROM node

# Running npm with root privileges
RUN npm install -g express