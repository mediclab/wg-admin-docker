init:
	@mkdir -p ./app/configs && mkdir -p ./app/logs;
	@chown 82:82 ./app/logs;
	@openssl rand -hex 16 | sed -i "s/APP_KEY=.*/APP_KEY=$(cat)/g" .env
	@docker-compose up -d;
	@docker-compose exec app php artisan migrate --force;
up:
	@docker-compose up -d;
down:
	@docker-compose down;
upgrade:
	@docker-compose down;
	@docker-compose pull;
	@docker-compose up -d;
	@docker-compose exec app php artisan migrate --force;
create-admin:
	@docker-compose exec app php artisan admin:create;