VOLUMES = $(HOME)/data/web-vol $(HOME)/data/db-data $(HOME)/data/static-website $(HOME)/data/owa-vol $(HOME)/data/owadb-data

$(VOLUMES):
	mkdir -p $(VOLUMES)

up: $(VOLUMES)
	docker compose -f srcs/docker-compose.yml up -d

upb:
	docker compose -f srcs/docker-compose.yml build --no-cache
	docker compose -f srcs/docker-compose.yml up -d

down:
	docker compose -f srcs/docker-compose.yml down

logs:
	docker compose -f srcs/docker-compose.yml logs
