FROM node:latest

RUN mkdir -p /usr/src/app/
WORKDIR /usr/src/app/

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git

RUN git clone https://github.com/arturyumaev/nginx-docker-playground.git &&\
    cd nginx-docker-playground &&\
    npm install $$\
    npx webpack


CMD ["echo", "$OSTYPE"]
