FROM python:3.9

RUN apt update && apt upgrade -y

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm

RUN mkdir /app/
COPY . /app
WORKDIR /app

RUN npm install

CMD node server.js
