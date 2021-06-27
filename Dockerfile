FROM node:latest

RUN mkdir -p /usr/src/app/

RUN apt-get update &&\
    apt-get upgrade -y &&\
    apt-get install -y git &&\
    git clone https://github.com/arturyumaev/nginx-docker-playground.git /usr/src/app/

WORKDIR /usr/src/app/nginx-docker-playground/

RUN npm install

CMD ["echo", "$OSTYPE"]
