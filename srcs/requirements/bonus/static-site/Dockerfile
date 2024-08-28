FROM debian:11

RUN apt-get update && apt-get upgrade && apt-get install -y nginx 

COPY ./conf/nginx.conf /etc/nginx/sites-available/default

CMD ["nginx", "-g", "daemon off;"]