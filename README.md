# Supported tags and respective Dockerfiles

`7.1.9` , `7.1`, `latest` _([7.0/Dockerfile](https://github.com/wplib/php-fpm-docker/blob/master/7.1/Dockerfile))_

`7.0.25` , `7.0` _([7.0/Dockerfile](https://github.com/wplib/php-fpm-docker/blob/master/7.0/Dockerfile))_

`5.6.30`, `5.6` _([5.6/Dockerfile](https://github.com/wplib/php-fpm-docker/blob/master/5.6/Dockerfile))_

This is the repository for the PHP-FPM containers used inside [WPLib-Box](https://github.com/wplib/wplib-box). They have customized configurations that are for use in the virtual machine.

## Building the containers

Simply execute the [`build.sh`](https://github.com/wplib/php-fpm-docker/blob/master/build.sh) command. If you wish to
push the artifacts to Docker Hub, use `build.sh push`.
