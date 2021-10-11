#!/bin/bash

# goto flask weather app
cd flask-weather-app/

# Check if the app-runner image is already existing
if [ -z "$(docker images -q corefinder/app-runner)" ]; then
    echo "Image already exist"
else
    docker build -t corefinder/app-runner app-runner/
fi

docker-compose up