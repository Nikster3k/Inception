FROM debian:11

RUN apt-get update && apt-get upgrade && apt-get install -y systemctl wget php-fpm

COPY ./conf/php.conf /etc/php/7.4/fpm/pool.d/www.conf

WORKDIR /var/www/html

RUN wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php

EXPOSE 9000

CMD ["php-fpm7.4", "-F"]