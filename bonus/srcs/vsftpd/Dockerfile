FROM debian:latest

RUN apt-get update && apt-get upgrade && apt-get install -y systemctl vsftpd

RUN useradd ftp-user
RUN passwd ftp-user
RUN mkdir /

CMD ["systemctl", "start", "vsftpd"]