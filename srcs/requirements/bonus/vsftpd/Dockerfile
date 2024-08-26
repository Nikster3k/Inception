FROM debian:11

RUN apt-get update && apt-get upgrade && apt-get install -y systemctl vsftpd 

COPY ./conf/ftp.conf /etc/vsftpd.conf
COPY ./tools/setup.sh /tools/setup.sh

EXPOSE 20-21
EXPOSE 10000-10100

CMD ["bash", "/tools/setup.sh"]