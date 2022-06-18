up: docker-up

init: \
	docker-clear \
	docker-up \
	success-msg

update: \
	docker-clear \
	docker-up \
	success-msg


docker-clear:
	echo "Остановка существующих контейнеров проекта"
	docker-compose down --remove-orphans

docker-restart:
	docker-compose down
	docker-compose up -d --build

docker-up:
	echo "Инициализация контейнеров"
	docker-compose up -d --build

get-permissions:
	echo "Выдача прав доступа для каталогов с динамическим содержимым"
	sudo chmod -R 777 ../back

clone-back:
	git clone https://gitlab.com/evgenii1452/back.git ../back

clone-front:
	git clone https://gitlab.com/evgenii1452/front.git ../front

db-init:
	echo "Инициализация БД"
	docker exec -i ws_mysql mysql -uwww -pwww main < ./docker/dumps/dump.sql

success-msg:
	echo "Проект успешно развернут!"

hosts:
	echo "192.168.46.2 php.loc" >> /etc/hosts

exec-back:
	sudo docker exec -it ws_php-fpm bash

reset-db:
	sudo rm -r ./docker/MySQL
	mkdir docker/MySQL
