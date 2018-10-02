FROM node:alpine

RUN apk update

RUN npm install -g http-server typescript jake ts-loader parcel-bundler

CMD http-server

WORKDIR /var/www/html