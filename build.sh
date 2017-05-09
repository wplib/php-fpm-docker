#!/usr/bin/env bash

docker build -t wplib/php-fpm:latest ./7.0/
docker build -t wplib/php-fpm:7.0.16 ./7.0/
docker build -t wplib/php-fpm:7.0 ./7.0/
docker build -t wplib/php-fpm:5.6.30 ./5.6/
docker build -t wplib/php-fpm:5.6 ./5.6/

if [ "push" = "${1}" ]; then
    docker push wplib/php-fpm
else
    echo "To push these artifacts to Docker Hub, execute docker push wplib/php-fpm."
fi