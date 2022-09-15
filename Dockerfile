FROM ubuntu:20.04


RUN npm i -g npm

RUN mkdir /app/
COPY . /app
WORKDIR /app

RUN npm install

CMD node server.js
