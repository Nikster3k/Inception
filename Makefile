up:
	docker compose -f srcs/docker-compose.yml up -d

upb:
	docker compose -f srcs/docker-compose.yml build --no-cache
	docker compose -f srcs/docker-compose.yml up -d

down:
	docker compose -f srcs/docker-compose.yml down

logs:
	docker compose -f srcs/docker-compose.yml logs

restart: down
	docker rmi $(docker images -q) | true
	make up