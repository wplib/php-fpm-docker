#!/bin/bash

docker build -t wplib/php-fpm-docker:7.1.9 --build-arg PHP_FPM_VERSION=7.1.9 .

