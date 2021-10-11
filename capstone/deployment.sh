#!/bin/bash

# Check if docker is installed in the machine
if [ -x "$(command -v docker)" ]; then
    echo "docker is installed"
else
    # Update the apt package index and install packages to allow apt to use a repository over HTTPS:
    apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
    # Add Docker’s official GPG key:
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
    # Use the following command to set up the stable repository. To add the nightly or test repository, add the word nightly or test (or both) after the word stable in the commands below.
    echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    apt-get update
    apt-get install docker-ce docker-ce-cli containerd.io    
fi

# Check if dig is installed
if [ -x "$(command -v dig)" ]; then
    echo "dnsutils is installed"
else
    apt-get install dnsutils
fi

status=$( sudo docker images -q corefinder/app-runner )

# Check if the app-runner image is already existing
if [[ -n "$status" ]]; then
  echo "Container exists"
else
  docker build -t corefinder/app-runner app-runner/
fi

# Check if public ip address is set as environmetn variabe
if [ -z ${server_ip} ];
then
    export server_ip=$(dig +short myip.opendns.com @resolver1.opendns.com)
else
    echo "environment variable already present"
fi

# goto flask weather app
cd flask-weather-app/

# Run docker compose in the background based on blue/green deployment flag
if [ $(docker ps -f name=blue -q) ]
then
    ENV="green"
    OLD="blue"
else
    ENV="blue"
    OLD="green"
fi

echo "Starting "$ENV" container"
docker-compose --project-name=$ENV up -d

echo "Waiting..."
sleep 5s

echo "Stopping "$OLD" container"
docker-compose --project-name=$OLD stop
