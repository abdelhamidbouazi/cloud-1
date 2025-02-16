
sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/' /etc/php/7.3/fpm/pool.d/www.conf

mkdir -p /run/php

curl -sO https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp


cd /var/www/html
chmod -R 777 /var/www/html

wp core download --allow-root

cp wp-config-sample.php wp-config.php
wp config set DB_NAME "$MYSQL_DATABASE" --allow-root
wp config set DB_USER "$MYSQL_USER" --allow-root
wp config set DB_PASSWORD "$MYSQL_PASSWORD" --allow-root
wp config set DB_HOST "mysql" --allow-root

wp core install --url="$DOMAIN_NAME" --title="$TITLE" --admin_user="$ADMIN" --admin_password="$ADMIN_PWD" --admin_email="$ADMIN_EMAIL" --allow-root
# wp theme install twentytwentytwo --allow-root
wp user create "$WP_USR" "$WP_EMAIL" --role=author --user_pass="$WP_PWD" --allow-root

# Start PHP-FPM
/usr/sbin/php-fpm7.3 -F