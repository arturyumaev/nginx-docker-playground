FROM node:latest

RUN mkdir -p /usr/src/app/

RUN apt-get update -y &&\
    apt-get upgrade -y &&\
    apt-get install -y git &&\
    apt-get install -y nginx &&\
    git clone https://github.com/arturyumaev/nginx-docker-playground.git /usr/src/app/

WORKDIR /usr/src/app/nginx-docker-playground/

RUN npm install
RUN npm run build

CMD ["nginx", "-v"]
