init:
	@mkdir -p ./app/configs && mkdir -p ./app/logs;
	@chown 82:82 ./app/logs;
	@docker-compose up -d;
	@docker-compose exec app php artisan migrate --force;
	@docker-compose exec app php artisan key:generate;
up:
	@docker-compose up -d;
down:
	@docker-compose down;
create-admin:
	@docker-compose exec app php artisan admin:create;