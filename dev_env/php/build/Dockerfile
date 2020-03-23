FROM php:fpm

RUN apt update

RUN apt install -y libzip-dev libpng-dev libgd-dev

RUN docker-php-ext-install zip pdo_mysql

RUN docker-php-ext-configure gd --with-freetype=/usr/include --with-jpeg=/usr/include

RUN docker-php-ext-install gd

WORKDIR /var/www/html