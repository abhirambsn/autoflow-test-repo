# Use an official Docker image as a parent image
FROM alpine/git as builder

# Set the working directory
WORKDIR /app

# Clone the repository
RUN git clone https://github.com/${{ github.repository }} .

# Use a base image
FROM alpine/git

# Copy the application code from the builder stage
COPY --from=builder /app .

# Command to run the application
CMD ["/bin/sh"]