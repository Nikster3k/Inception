FROM debian:latest

RUN apt-get update && apt-get upgrade && apt-get install -y systemctl mariadb-server mariadb-client

COPY ./setup.sh /docker-entrypoint-initdb.d/setup.sh
COPY ./my.cnf /etc/mysql/my.cnf
COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN chmod +x /docker-entrypoint-initdb.d/setup.sh

EXPOSE 3306

CMD ["mysqld_safe"]