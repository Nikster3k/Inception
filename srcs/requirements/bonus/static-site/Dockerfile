FROM debian:11

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y nginx 

COPY ./conf/nginx.conf /etc/nginx/sites-available/default

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]