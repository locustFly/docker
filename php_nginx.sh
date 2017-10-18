#!/bin/bash
#Filename:php_nginx.sh   
#auto 实现源码安装php和nginx环境，并且开启pgsql扩展
#by authors  yinlei

#安装第三方扩展
yum -y install epel-release
#安装搭建中必要的软件和一些基础命令软件
yum -y install net-tools pcre-* openssl openssl-devel gcc gcc-c++ ncurses-devel perl readline-devel zip unzip php-mcrypt libmcrypt libmcrypt-devel libcurl curl-devel libxml2 libxml2-devel m4 autoconf postgresql-devel  vim

mkdir  /usr/src/php 
cd /usr/src/php


#安装php
wget http://at1.php.net/distributions/php-7.1.4.tar.gz

tar zxf php-7.1.4.tar.gz

cd php-7.1.4

./configure --prefix=/usr/local/php --enable-fpm --with-openssl --with-mcrypt=/usr/include --enable-mbstring --enable-session --with-curl --enable-zip --with-zlib
make
make install

cp php.ini-production /usr/local/php/lib/php.ini
cp /usr/local/php/etc/php-fpm.conf.default /usr/local/php/etc/php-fpm.conf
cp /usr/local/php/etc/php-fpm.d/www.conf.default /usr/local/php/etc/php-fpm.d/www.conf
cp sapi/fpm/init.d.php-fpm /usr/local/php/bin/php-fpm
chmod +x /usr/local/php/bin/php-fpm
cd ../
#配置环境变量


#修改php-fpm的连接数量


#安装Nginx
wget http://nginx.org/download/nginx-1.11.13.tar.gz
tar zxf nginx-1.11.13.tar.gz
cd nginx-1.11.13
./configure --prefix=/usr/local/nginx
make
make install

#设置配置文件

#配置环境变量


