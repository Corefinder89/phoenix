#!/bin/bash

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
    echo "environmetn variable already present"
fi

# goto flask weather app
cd flask-weather-app/
docker-compose up