import json

# Load the Ganache configurations
with open('ganache-config.json') as config_file:
    configs = json.load(config_file)

# Start writing the docker-compose.yml file
docker_compose_content = """
version: '3.8'

services:
"""

# Add each Ganache service to the docker-compose.yml file
for config in configs:
    service_content = f"""
  {config['name']}:
    build: .
    ports:
      - "{config['port']}:8545"
    command: ganache-cli --networkId {config['networkId']} --port 8545
"""
    docker_compose_content += service_content

# Write the content to the docker-compose.yml file
with open('docker-compose.yml', 'w') as docker_compose_file:
    docker_compose_file.write(docker_compose_content)

print("docker-compose.yml file generated successfully.")
