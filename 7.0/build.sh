#!/bin/bash

docker build -t wplib/php-fpm-docker:7.0.25 --build-arg PHP_FPM_VERSION=7.0.25 .

