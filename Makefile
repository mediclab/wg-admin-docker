init:
	@mkdir -p ./app/configs
	@mkdir -p ./app/logs
	@chown 82:82 ./app/logs
	@COMPOSE_HTTP_TIMEOUT=200 docker-compose up -d;
	@COMPOSE_HTTP_TIMEOUT=200 docker-compose exec app php artisan migrate;
	@COMPOSE_HTTP_TIMEOUT=200 docker-compose exec app php artisan key:generate;
up:
	@COMPOSE_HTTP_TIMEOUT=200 docker-compose up -d;
down:
	@COMPOSE_HTTP_TIMEOUT=200 docker-compose down;
create-admin:
	@COMPOSE_HTTP_TIMEOUT=200 docker-compose exec app php artisan admin:create;