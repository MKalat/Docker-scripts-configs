#!/bin/bash
docker run -d -p 80:80 -p 443:443 -v /opt/etc/docker_nginx_webproxy/httpd/network_internal.conf:/etc/nginx/network_internal.conf \
-v /var/www/onepagedemo1/web:/var/www/html \
-v /var/www/mk-book-api:/var/www \
-v /opt/etc/nginx_proxy/sites-enabled:/etc/nginx/sites-enabled \
-v /opt/etc/nginx_proxy/conf.d:/etc/nginx/conf.d \
--name nginx_proxy nginx:latest
docker network connect mynetwork nginx_proxy

