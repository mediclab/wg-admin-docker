init:
	@mkdir -p ./app/configs && mkdir -p ./app/logs;
	@chown 82:82 ./app/logs;
	@docker compose up -d;
	@docker compose exec app php artisan key:generate;
	@docker compose exec app php artisan migrate --force;
up:
	@docker compose up -d;
down:
	@docker compose down;
upgrade:
	@docker compose down;
	@docker compose pull;
	@docker compose up -d;
	@docker compose exec app php artisan migrate --force;
create-admin:
	@docker compose exec app php artisan admin:create;
add-cron:
	@echo "Adding cron job..."
	(crontab -l ; echo "* * * * * cd $$(pwd) && docker compose exec app php artisan device:traffic:update >> /dev/null 2>&1") | crontab - ;
