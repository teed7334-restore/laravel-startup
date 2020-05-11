FROM php:fpm-alpine

RUN apk update

RUN apk add libzip-dev libpng-dev libgd libjpeg libjpeg-turbo-dev freetype-dev npm

RUN docker-php-ext-install zip pdo_mysql

RUN docker-php-ext-configure gd --with-freetype=/usr/include --with-jpeg=/usr/include

RUN docker-php-ext-install gd

WORKDIR /var/www/html