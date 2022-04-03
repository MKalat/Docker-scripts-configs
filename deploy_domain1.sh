docker run -itd --mount type=bind,src=/var/www/domain1/web,dst=/var/www \
--expose 9000  --hostname domain11 --name domain1  mkpl/docker_php81-fpm
docker network connect mynetwork domain1
