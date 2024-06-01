# Use the official Node.js image as the base image
FROM node:21

# Set the working directory
WORKDIR /usr/src/app

# Install Ganache CLI globally
RUN npm install -g ganache-cli

# Expose the default Ganache port
EXPOSE 8545

# Command to run Ganache with configurable parameters
CMD ["ganache-cli", "--host", "0.0.0.0"]
