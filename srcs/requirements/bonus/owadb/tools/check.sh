#!/bin/bash

init(){
mariadb -u root << EOF
CREATE DATABASE IF NOT EXISTS $OWA_DB_NAME;
USE $OWA_DB_NAME;
CREATE USER IF NOT EXISTS '$OWA_DB_USER'@'%' IDENTIFIED BY '$OWA_DB_PASSWORD';
GRANT ALL PRIVILEGES ON $OWA_DB_NAME.* TO '$OWA_DB_USER'@'%';
FLUSH PRIVILEGES;
EOF
}

if mysqladmin ping --silent; then
    init
    exit 0
else
    exit 1
fi
