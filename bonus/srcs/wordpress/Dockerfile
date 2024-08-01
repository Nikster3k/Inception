FROM debian:latest

RUN apt-get update && apt-get upgrade && apt-get install -y wget tar php-fpm systemctl php-mysql

COPY ./conf/www.conf /etc/php/8.2/fpm/pool.d/www.conf

WORKDIR /var/www/html

RUN wget https://wordpress.org/latest.tar.gz && tar -xzvf latest.tar.gz && rm latest.tar.gz

COPY ./conf/wp-config-template.php /conf/wp-config-template.php
COPY ./tools/setup.sh /tools/setup.sh

EXPOSE 9000

CMD [ "bash", "/tools/setup.sh", "/conf/wp-config-template.php", "/var/www/html/wordpress/wp-config.php" ]