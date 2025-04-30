# Use the official Docker image as the base image
FROM docker:latest

# Set the working directory
WORKDIR /app

# Install Docker CLI
RUN apk add --no-cache docker-cli

# Define a simple command to check Docker version
CMD ["docker", "--version"]