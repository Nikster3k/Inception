FROM debian:11

RUN apt-get update && apt-get upgrade && apt-get install -y systemctl redis 

COPY ./conf/redis.conf /etc/redis/redis.conf

EXPOSE 6379

CMD ["redis-server", "/etc/redis/redis.conf"]