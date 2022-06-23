DOCKER_COMPOSE := docker-compose -f docker-compose.yml

docker_init: docker_build docker_start

docker_build:
	$(DOCKER_COMPOSE) build --no-cache

docker_start:
	$(DOCKER_COMPOSE) up
