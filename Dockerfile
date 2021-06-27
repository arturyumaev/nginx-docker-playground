FROM node:latest

RUN mkdir -p /usr/src/app/

RUN apt-get update -y &&\
    apt-get upgrade -y &&\
    apt-get install -y git &&\
    apt-get install -y nginx &&\
    git clone https://github.com/arturyumaev/nginx-docker-playground.git /usr/src/app/

WORKDIR /usr/src/app/

RUN npm install &&\
    npm run build

# cp nginx.conf /etc/nginx/

EXPOSE 3000

CMD ["ls", "-la"]
