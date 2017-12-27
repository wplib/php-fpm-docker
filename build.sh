#!/usr/bin/env bash

BASEDIR="`pwd`"

cd $BASEDIR; cd 5.6
make clean
make build

cd $BASEDIR; cd 7.0
make clean
make build

cd $BASEDIR; cd 7.1
make clean
make build

# docker push wplib/php-fpm
