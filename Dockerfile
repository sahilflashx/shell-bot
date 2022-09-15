FROM ubuntu:20.04

RUN apt-get install curl -y
RUN curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
RUN apt install nodejs
RUN npm i -g npm

RUN mkdir /app/
COPY . /app
WORKDIR /app

RUN npm install

CMD node server.js
