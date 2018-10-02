# laravel-startup
接案環境快速生成器

## 內含套件
1. Nginx
2. PHP
3. phpMyAdmin
4. phpRedisAdmin
5. NodeJS
6. TypeScript
7. Jake
8. Parcel
9. MySQL
10. Redis
11. Beanstalkd

## 端口與服務
1. port 80 nginx
2. port 10080 phpMyAdmin
3. port 10081 phpRedisAdmin
4. port 6379 redis
5. port 11300 beanstalkd
6. port 3306 mysql

## 使用方式
1. 進入 dev_env 資料夾中
2. 下 docker-compose up -d --build 啟動 docker 環境
3. 下 docker exec -it startup_php sh 進入 docker container
4. 進入 /var/www/html/dev_env/php 資料夾中
5. 下 ./installLaravel.sh 安裝Laravel、Voyager、Laravel-Debugbar
6. 修改你的 .env 檔，使其可以正確連接到Database、Cache、Message Quete
7. 啟用後台 php artisan voyager:install
8. 參考下方教學資源，設定你的 Laravel-Debugbar

## 資料庫預設帳密
帳號: root

密碼: 1qazse4rfvgy7

## composer 使用方式
1. docker exec -it startup_php sh 進入PHP環境
2. php ~/composer.phar

## npm & tsc & jake & parcel-bundler 使用方式
1. docker exec -it startup_node sh 進入node環境
2. npm install [套件名]
3. tsc [檔案名]
4. jake [檔案名]
5. parcel [檔案名]

## 教學資源
1. [Laravel](https://laravel.com/docs/master)
2. [Voyager](https://voyager.readme.io/docs)
3. [Laravel-Debugbar](https://github.com/barryvdh/laravel-debugbar)
4. [Parcel](http://www.css88.com/doc/parcel/getting_started.html)