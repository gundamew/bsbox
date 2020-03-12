#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get upgrade -y

apt-get install nginx -y
ln -s /etc/nginx/sites-available/digo-admin.conf /etc/nginx/sites-enabled/
ln -s /etc/nginx/sites-available/digo-ec.conf /etc/nginx/sites-enabled/

debconf-set-selections <<< "mysql-server mysql-server/root_password password secret"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password secret"
apt-get install mysql-server -y

apt-get install php-fpm php-mysql -y

systemctl restart php7.2-fpm
nginx -s reload
