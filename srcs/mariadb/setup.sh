#!/bin/bash

run_sql_commands() {
while ! mysqladmin ping --silent; do
    sleep 1
done

mariadb -u root << EOF
CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;
USE $MYSQL_DATABASE;
CREATE USER IF NOT EXISTS '$MYSQL_USERNAME'@'wordpress.$NETWORK_NAME' IDENTIFIED BY '$MYSQL_PASSWORD';
GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USERNAME'@'wordpress.$NETWORK_NAME';
FLUSH PRIVILEGES;
EOF
}

run_sql_commands &

mysqld_safe