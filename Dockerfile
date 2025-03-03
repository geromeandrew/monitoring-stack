# Use an official lightweight Ubuntu image
FROM ubuntu:latest

# Set environment variables to prevent interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install required packages
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    tar \
    nano \
    docker.io \
    docker-compose \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy all configuration files
COPY . .

# Expose necessary ports
EXPOSE 9090 3000 3100 3200 9115

# Start monitoring stack
CMD ["docker-compose", "up", "-d", "--remove-orphans"]
