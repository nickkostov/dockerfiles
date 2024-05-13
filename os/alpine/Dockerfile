ARG IMAGE_VERSION=latest
FROM alpine:$IMAGE_VERSION
LABEL org.opencontainers.image.description="" \
      org.opencontainers.image.authors="Nikolay Kostov (https://www.linkedin.com/in/nikolay-kostov-689364131/)" \
      org.opencontainers.image.url="ghcr.io/nickkostov/dockerfiles/alpine:latest" \
      org.opencontainers.image.documentation="https://github.com/nickkostov/dockerfiles/os/alpine/README.md" \
      org.opencontainers.image.source="https://github.com/nickkostov/dockerfiles/os/alpine"

# Add any specific configurations or packages here

RUN apk add --update --no-cache python3

# Testing localyhosted executor