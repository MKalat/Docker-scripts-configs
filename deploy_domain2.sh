docker run -itd -v /var/www/domain2:/var/www \
--expose 9000  --hostname domain2 --name domain2  mkpl/docker_php81-fpm
docker network connect mynetwork domain2
