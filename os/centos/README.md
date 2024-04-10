# Example usage for centos image

To build the Docker image using this Dockerfile, execute the following command:

```bash
docker build -t your_image_name --build-arg IMAGE_VERSION=desired_version .
```

Replace `your_image_name` with your desired image name and tag, and `desired_version` with the desired version of the base image.

To run a container using the built image, use the following command:

```bash
docker run -d your_image_name
```

This will start a container in detached mode.
