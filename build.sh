#!/bin/sh

image_name=creativeprojects/php-nodejs
image_versions="5.6 7.0 7.1"

for image_version in ${image_versions}; do
    echo Downloading php:${image_version}
    docker pull php:${image_version}

    # docker rmi ${image_name}:${image_version}
    # docker rmi ${image_name}:latest

    echo Building image ${image_name}:${image_version}
    docker build -t ${image_name}:${image_version} \
                 -t ${image_name}:latest \
                 -f Dockerfile-php${image_version} \
                 ./

    echo Pushing image ${image_name}:${image_version}
    docker push ${image_name}:${image_version}

    echo Pushing image ${image_name}:latest
    docker push ${image_name}:latest
done
