FROM debian:latest

RUN apt-get update && apt-get upgrade && apt-get install -y systemctl mariadb-server
COPY ./setup.sh /setup.sh
COPY ./my.cnf /etc/mysql/my.cnf
COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN chmod +x /setup.sh

EXPOSE 3306

CMD ["bash", "/setup.sh"]
# CMD [ "mysqld_safe" ]