FROM debian:11

RUN apt-get update && apt-get upgrade && apt-get install -y wget tar php-fpm systemctl php-mysql

COPY ./conf/php.conf /etc/php/7.4/fpm/pool.d/www.conf

WORKDIR /var/www/html

RUN wget https://wordpress.org/latest.tar.gz && tar -xzvf latest.tar.gz && mv wordpress/* ./ && rm -r wordpress && rm latest.tar.gz
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp
RUN mkdir -p /run/php/

COPY ./tools/setup.sh /tools/setup.sh

EXPOSE 9000

CMD [ "bash", "/tools/setup.sh" ]