FROM atlantis:latest

RUN apt-get install -y nodejs npm
RUN npm install -g n
RUN n latest
RUN npm install --global @angular/cli
RUN npm install --global yarn
COPY /app /app
WORKDIR /app
RUN yarn install
RUN ng build
CMD ["ng","serve","--host", "0.0.0.0"]