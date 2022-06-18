# Запуск докер контейнеров

<b>$ cd env/ </b> <br>
<b>$ sudo make init </b> <br>
<b>$ sudo make hosts </b> (опционально) <br>

## Команды в /env
Команды необходимо выполнять из директории env<br><br>
$ sudo make init - инициализация докер контенеров<br>
$ sudo make reset-db - сброс базы.<br>
$ sudo make exec-back - перейти в контейнер php-fpm<br>
$ sudo make db-init - импорт базы. dump необходимо поместить по пути env/docker/dumps/dump.sql<br>
$ sudo make docker-restart<br>
$ sudo make docker-up<br>


## php.loc
php.loc - директория php проекта


## env
env - директория с настройками контейнера
env/.env - перменные окружения
