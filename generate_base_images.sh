#!/bin/bash

##################################################
#
#  One Script to rule them all
#
#
##################################################
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
ARG IMAGE_VERSION=latest
FROM ubuntu:\$IMAGE_VERSION
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
ARG IMAGE_VERSION=latest
FROM alpine:\$IMAGE_VERSION
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
ARG IMAGE_VERSION=latest
FROM debian:\$IMAGE_VERSION
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
ARG IMAGE_VERSION=latest
FROM centos:\$IMAGE_VERSION
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

    # Create README file
    cat <<EOF > "$os_directory/README.md"
# Example usage for $os image

To build the Docker image using this Dockerfile, execute the following command:

\`\`\`bash
docker build -t your_image_name --build-arg IMAGE_VERSION=desired_version .
\`\`\`

Replace \`your_image_name\` with your desired image name and tag, and \`desired_version\` with the desired version of the base image.

To run a container using the built image, use the following command:

\`\`\`bash
docker run -d your_image_name
\`\`\`

This will start a container in detached mode.
EOF

done

echo "Directories, Dockerfiles, and READMEs created successfully."
