#!/bin/bash

docker run -d  -e WORDPRESS_DB_HOST=docker_mysql -e WORDPRESS_TABLE_PREFIX=wp_ -e WORDPRESS_DB_USER=user -e WORDPRESS_DB_PASSWORD="somepassword" -e WORDPRESS_DB_NAME=some_db \
-v /var/www/domain3/web,dst=/var/www/html --expose 80 --name domain3 wordpress
