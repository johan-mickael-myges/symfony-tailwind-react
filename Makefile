install:
	docker compose exec php composer install \
	&& docker compose exec php npm install

run:
	docker compose up -d \
	&& docker compose exec php npm run watch

npm:
	docker compose exec php npm $(filter-out $@,$(MAKECMDGOALS))

composer:
	docker compose exec php composer $(filter-out $@,$(MAKECMDGOALS))

symfony:
	docker compose exec php bin/console $(filter-out $@,$(MAKECMDGOALS))
