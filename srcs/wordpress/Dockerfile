FROM debian:latest

RUN apt-get update && apt-get upgrade && apt-get install -y wget tar php-fpm systemctl

COPY ./www.conf /etc/php/8.2/fpm/pool.d/www.conf

WORKDIR /var/www/html

RUN wget https://wordpress.org/latest.tar.gz && tar -xzvf latest.tar.gz && rm latest.tar.gz

EXPOSE 9000

CMD ["systemctl", "start", "php8.2-fpm"]