#!/bin/bash
docker run --name docker_phpmyadmin -itd -e PMA_HOST=docker_mysql -e UPLOAD_LIMIT=9072 --expose 80 phpmyadmin
docker network connect mynetwork docker_phpmyadmin
