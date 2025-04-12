# Use a lightweight Python base image
FROM python:3.9-slim-buster

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install any dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code into the container
COPY . .

# Expose the port the app runs on (if applicable)
# If your app listens on a specific port, expose it here.  For example:
# EXPOSE 8000

# Define the command to run the application
CMD ["python", "main.py"]