ARG IMAGE_VERSION=latest
FROM debian:$IMAGE_VERSION
LABEL org.opencontainers.image.description="" \
      org.opencontainers.image.authors="Nikolay Kostov (https://www.linkedin.com/in/nikolay-kostov-689364131/)" \
      org.opencontainers.image.url="ghcr.io/nickkostov/dockerfiles/debian:latest" \
      org.opencontainers.image.documentation="https://github.com/nickkostov/dockerfiles/os/debian/README.md" \
      org.opencontainers.image.source="https://github.com/nickkostov/dockerfiles/os/debian"

# Add any specific configurations or packages here
RUN  apt update && \
apt install apache2 -y