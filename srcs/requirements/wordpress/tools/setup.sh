#!/bin/bash

mv wp-config-sample.php wp-config.php

wp config set DB_NAME $MYSQL_DATABASE --allow-root
wp config set DB_USER $MYSQL_USERNAME --allow-root
wp config set DB_PASSWORD $MYSQL_PASSWORD --allow-root
wp config set DB_HOST mariadb --allow-root

wp core install --url="$DOMAIN_NAME" --title="$WP_TITLE" --admin_user="$WP_ADMIN_NAME" --admin_email="$WP_ADMIN_MAIL" --admin_password="$WP_ADMIN_PASSWORD" --allow-root

wp user create $WP_USER_NAME $WP_USER_MAIL --role="$WP_USER_ROLE" --user_pass="$WP_USER_PASSWORD" --allow-root

wp plugin install redis-cache --activate --allow-root

wp config set WP_REDIS_HOST redis --allow-root
wp config set WP_REDIS_PORT 6379 --allow-root
wp config set WP_CACHE true --allow-root

wp redis enable --allow-root

exec php-fpm7.4 -F