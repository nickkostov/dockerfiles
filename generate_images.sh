#!/bin/bash

# Create the os directory if it doesn't exist
mkdir -p os

# Array of operating systems
operating_systems=("ubuntu" "alpine" "debian" "centos")

# Loop through the array and create directories
for os in "${operating_systems[@]}"; do
    os_directory="os/$os"
    mkdir -p "$os_directory"
    
    # Create Dockerfile for each OS
    case $os in
        ubuntu)
            echo "Creating Dockerfile for $os"
            cat <<EOF > "$os_directory/Dockerfile"
FROM ubuntu:latest
LABEL org.opencontainers.image.description="" \\
      org.opencontainers.image.authors="Nikolay Kostov (https://www.linkedin.com/in/nikolay-kostov-689364131/)" \\
      org.opencontainers.image.url="" \\
      org.opencontainers.image.documentation="" \\
      org.opencontainers.image.source=""
# Add any specific configurations or packages here
EOF
            ;;
        alpine)
            echo "Creating Dockerfile for $os"
            cat <<EOF > "$os_directory/Dockerfile"
FROM alpine:latest
LABEL org.opencontainers.image.description="" \\
      org.opencontainers.image.authors="Nikolay Kostov (https://www.linkedin.com/in/nikolay-kostov-689364131/)" \\
      org.opencontainers.image.url="" \\
      org.opencontainers.image.documentation="" \\
      org.opencontainers.image.source=""
# Add any specific configurations or packages here
EOF
            ;;
        debian)
            echo "Creating Dockerfile for $os"
            cat <<EOF > "$os_directory/Dockerfile"
FROM debian:latest
LABEL org.opencontainers.image.description="" \\
      org.opencontainers.image.authors="Nikolay Kostov (https://www.linkedin.com/in/nikolay-kostov-689364131/)" \\
      org.opencontainers.image.url="" \\
      org.opencontainers.image.documentation="" \\
      org.opencontainers.image.source=""
# Add any specific configurations or packages here
EOF
            ;;
        centos)
            echo "Creating Dockerfile for $os"
            cat <<EOF > "$os_directory/Dockerfile"
FROM centos:latest
LABEL org.opencontainers.image.description="" \\
      org.opencontainers.image.authors="Nikolay Kostov (https://www.linkedin.com/in/nikolay-kostov-689364131/)" \\
      org.opencontainers.image.url="" \\
      org.opencontainers.image.documentation="" \\
      org.opencontainers.image.source=""
# Add any specific configurations or packages here
EOF
            ;;
        *)
            echo "Unsupported OS: $os"
            ;;
    esac
done

echo "Directories and Dockerfiles created successfully."
