FROM node:latest

RUN mkdir -p /usr/src/app/

RUN apt-get update -y &&\
    apt-get upgrade -y &&\
    apt-get install -y git &&\
    apt-get install -y nginx

COPY . /usr/src/app/

WORKDIR /usr/src/app/

RUN npm install &&\
    npm run build &&\
    cp nginx.conf /etc/nginx/ &&\
    rm -rf ./node_modules

EXPOSE 3000

CMD ["nginx", "-g", "daemon off;"]
