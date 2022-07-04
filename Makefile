DOCKER_COMPOSE := docker-compose -f docker-compose.yml

docker_init: docker_build docker_start

docker_build:
	$(DOCKER_COMPOSE) build --no-cache

docker_start:
	$(DOCKER_COMPOSE) up -d

docker_logs:
	$(DOCKER_COMPOSE) logs -f

openapi_generate:
	openapi-generator-cli generate -g openapi-yaml -o api -i api/todo_api.yml

