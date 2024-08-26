FROM debian:11

RUN apt-get update && apt-get upgrade && apt-get install -y systemctl nginx openssl

# COPY ./default /etc/nginx/sites-enabled/default
COPY ./conf/default /etc/nginx/sites-available/default

WORKDIR /etc/nginx/ssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout nginx.key -out nginx.crt -subj "/C=AT/ST=VIENNA/L=VIENNA/O=42/CN=nsassenb.42.fr"

CMD ["systemctl", "start", "nginx.service"]