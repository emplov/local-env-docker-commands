mongodb:
	docker run --network bridge -e MONGO_INITDB_ROOT_USERNAME=root -e MONGO_INITDB_ROOT_PASSWORD=123456 --name mongo -p 27017:27017 -d mongo
mysql:
	docker run --name mysql -e MYSQL_ROOT_PASSWORD=123456 -v "$(PWD)/mysql":"/var/lib/mysql" -d mysql
ubuntu-mysql:
	docker run -d --name mysql -e TZ=UTC -p 3306:3306 -v "$(PWD)/mysql":/var/lib/mysql -e MYSQL_ROOT_PASSWORD=123456 ubuntu/mysql:8.0-21.10_beta
redis:
	docker run --name redis -d redis
build-php:
	docker build -t php -f php.Dockerfile .
