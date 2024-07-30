FROM debian:latest

RUN apt-get update && apt-get upgrade && apt-get install -y systemctl mariadb-server mariadb-client

COPY ./setup.sh /docker-entrypoint-initdb.d/setup.sh

RUN chmod +x /docker-entrypoint-initdb.d/setup.sh

EXPOSE 3306

CMD ["mysqld_safe"]