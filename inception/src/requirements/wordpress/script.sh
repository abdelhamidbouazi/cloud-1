#!/bin/bash
 
mkdir /var/www/
mkdir /var/www/html
cd /var/www/html
 chmod -R 777 /var/www/html

sed -i 's/listen = \/run\/php\/php8.3-fpm.sock/listen = 9000/g' /etc/php/8.3/fpm/pool.d/www.conf
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar

mv wp-cli.phar /usr/local/bin/wp
wp core download --allow-root

 mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php

 sed -i "s/database_name_here/$MYSQL_DATABASE/1" wp-config.php
 sed -i "s/username_here/$MYSQL_USER/1" wp-config.php
 sed -i "s/password_here/$MYSQL_PASSWORD/1" wp-config.php
 sed -i "s/localhost/mysql/1" wp-config.php


# echo "Sleeping for 30 seconds"
# sleep 30
 wp core install --url="localhost" --title="title" --admin_user=$wp_user_1 --admin_password=$wp_password_1 --admin_email=$wp_email_1 --allow-root
 wp user create $wp_user_2 $wp_email_2 --role=author --user_pass=$wp_password_2 --display_name=$wp_user_2 --allow-root


php-fpm8.3 -F