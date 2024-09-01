FROM debian:11

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y systemctl mariadb-server
COPY ./tools/check.sh /tools/check.sh
COPY ./conf/my.cnf /etc/mysql/my.cnf
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN chmod +x /tools/check.sh


EXPOSE 3306
CMD [ "mysqld_safe" ]