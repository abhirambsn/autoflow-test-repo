# Use the official Docker image as a parent image
FROM docker:latest

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Define default command.
CMD ["docker", "version"]