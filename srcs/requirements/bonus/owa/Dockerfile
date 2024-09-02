FROM debian:11

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y wget tar gettext-base php php-mysql

RUN mkdir -p /run/php
WORKDIR /var/www/owa

COPY ./config/owa-conf.php /config/owa-conf.php
COPY ./tools/init.sh /tools/init.sh

RUN wget https://github.com/Open-Web-Analytics/Open-Web-Analytics/releases/download/1.7.8/owa_1.7.8_packaged.tar && tar -xf owa_1.7.8_packaged.tar

EXPOSE 8080

CMD [ "/bin/bash", "/tools/init.sh" ]