install:
	docker compose exec php composer install \
	&& docker compose exec php npm install

run:
	docker compose up -d \
	&& docker compose exec php npm run watch

