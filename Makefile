install:
	docker compose up -d --build
	docker compose run symfony composer install
	docker compose run symfony chmod -R 777 var
	docker compose run symfony npm install
	docker compose run symfony npm run build
	docker compose run symfony chmod -R 777 var translations