FROM corefinder/app-runner:latest

RUN mkdir flask-weather-app

# Copy the application to Docker
COPY . flask-weather-app/

# Install python deps from requirements.txt
RUN pip install -r flask-weather-app/requirements.txt

WORKDIR flask-weather-app

# Run flask app
ENTRYPOINT python3 app.py
