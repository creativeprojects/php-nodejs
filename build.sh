#!/bin/sh

image_name=creativeprojects/php-nodejs

php_version=5.6

docker pull php:${php_version}
docker rmi ${image_name}:${php_version}
docker rmi ${image_name}:latest
docker build -t ${image_name}:${php_version} -t ${image_name}:latest -f Dockerfile-php${php_version} ./
docker push ${image_name}:${php_version}
docker push ${image_name}:latest
