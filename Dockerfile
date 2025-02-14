FROM python:3.9

RUN apt update && apt upgrade -y
RUN apt install python3-pip -y

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm

RUN mkdir /app/
COPY . /app
WORKDIR /app

RUN pip3 install --upgrade pip
RUN npm install

CMD node server.js
