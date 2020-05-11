# laravel-startup
接案環境快速生成器

## 內含套件
1. Nginx
2. PHP

## 端口與服務
1. port 80 nginx

## 使用方式
1. 進入 dev_env 資料夾中
2. 下 docker-compose up -d --build 啟動 docker 環境
3. 下 docker exec -it startup_php sh 進入 docker container
4. 進入 /var/www/html/dev_env/php 資料夾中
5. 下 ./installLaravel.sh 安裝Laravel、Voyager、Laravel-Debugbar、Blueprint
6. 修改你的 .env 檔，使其可以正確連接到Database、Cache、Message Quete
7. 啟用後台 php artisan voyager:install --with-dummy
8. 參考下方教學資源，設定你的 Laravel-Debugbar

## 教學資源
1. [Laravel](https://laravel.com/docs/master)
2. [Voyager](https://voyager.readme.io/docs)
3. [Laravel-Debugbar](https://github.com/barryvdh/laravel-debugbar)
4. [blueprint](https://github.com/laravel-shift/blueprint)