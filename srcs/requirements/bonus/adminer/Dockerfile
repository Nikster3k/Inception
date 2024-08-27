FROM debian:11

RUN apt-get update && apt-get upgrade && apt-get install -y curl php php-mysql
RUN mkdir -p /run/php/

RUN mkdir -p /var/www/html/adminer && curl -L https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php -o /var/www/html/adminer/index.php

EXPOSE 8080

CMD ["php", "-S", "0.0.0.0:8080", "-t", "/var/www/html/adminer"]
