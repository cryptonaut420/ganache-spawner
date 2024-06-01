# Use the official Node.js image as the base image
FROM node:21

# Set the working directory
WORKDIR /usr/src/app

# Install Ganache globally
RUN npm install -g ganache

# Expose the default Ganache port
EXPOSE 8545

# Command to run Ganache with configurable parameters (will be overridden by docker-compose)
CMD ["ganache", "--host", "0.0.0.0"]
