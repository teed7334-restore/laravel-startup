FROM php:7.0-fpm-alpine3.7

RUN apk update

RUN apk add libpng-dev freetype-dev libjpeg-turbo-dev jpeg-dev

RUN docker-php-ext-install zip pdo_mysql

RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-png-dir=/usr/include --with-jpeg-dir=/usr/include

RUN docker-php-ext-install gd

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"

RUN php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"

RUN php composer-setup.php

RUN php -r "unlink('composer-setup.php');"

RUN mv composer.phar ~/

WORKDIR /var/www/html