FROM ubuntu:latest

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install tzdata
ENV TZ=Australia/Melbourne
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN dpkg-reconfigure --frontend noninteractive tzdata
RUN apt-get update -y \
  && apt-get install -y software-properties-common \
                        apt-utils \
                        curl \
                        wget \
                        unzip \
                        libxss1 \
                        libappindicator1 \
                        libindicator7 \
                        libasound2 \
                        libgconf-2-4 \
                        libnspr4 \
                        libnss3 \
                        libpango1.0-0 \
                        fonts-liberation \
                        xdg-utils
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get install -y nodejs npm
RUN npm install -g n
RUN n latest
RUN npm install --global @angular/cli
RUN npm install --global yarn
COPY /app /app
WORKDIR /app
RUN yarn install
RUN ng build