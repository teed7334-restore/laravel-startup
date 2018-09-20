# laravel-startup
Nginx + PHP 7.0 + MySQL + Laravel 環境快速生成器

## 使用方式
1. 進入 dev_env 資料夾中
2. 下 docker-compose up -d 啟動 docker 環境
3. 下 docker exec -it startup_php sh 進入 docker container
4. 下 php ~/composer.phar create-project --prefer-dist laravel/laravel web 安裝 Laravel
5. 進入 web 資料夾中
6. 下 chmod -R 777 storage bootstrap/cache

## 資料庫預設帳密
帳號: root

密碼: 1qazse4rfvgy7

## composer 使用方式
```
php ~/composer.phar
```
