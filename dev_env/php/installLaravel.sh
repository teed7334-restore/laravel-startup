#!/bin/sh
echo 'nameserver 1.1.1.1' > /etc/resolv.conf
echo 'nameserver 1.0.0.1' >> /etc/resolv.conf
cd /var/www/html;
php composer.phar create-project --prefer-dist laravel/laravel web;
cd /var/www/html/web;
chmod -R 777 storage bootstrap/cache;
php ../composer.phar require tcg/voyager;
php ../composer.phar require barryvdh/laravel-debugbar --dev
php ../composer.phar require --dev laravel-shift/blueprint
echo 'success';