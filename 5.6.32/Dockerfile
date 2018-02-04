FROM alpine:3.5

MAINTAINER WPLib Team <team@wplib.org>

ENV HOME /root

ENV DEBIAN_FRONTEND noninteractive

RUN apk update && \
	apk add --no-cache bash curl gnupg imagemagick openssl shadow && \
	apk add --no-cache php5=5.6.32-r0 php5-fpm=5.6.32-r0 php5-bcmath=5.6.32-r0 php5-curl=5.6.32-r0 \
		php5-dom=5.6.32-r0 php5-ftp=5.6.32-r0 php5-gd=5.6.32-r0 php5-gettext=5.6.32-r0 \
		php5-intl=5.6.32-r0 php5-iconv=5.6.32-r0 php5-json=5.6.32-r0 php5-mcrypt=5.6.32-r0 \
		php5-mysqli=5.6.32-r0 php5-opcache=5.6.32-r0 php5-openssl=5.6.32-r0 php5-pcntl=5.6.32-r0 \
		php5-pspell=5.6.32-r0 php5-xdebug=2.5.0-r1 php5-xml=5.6.32-r0 php5-zip=5.6.32-r0 php5-ctype=5.6.32-r0 && \
	mkdir -p /run/php && \
	wget https://github.com/mailhog/mhsendmail/releases/download/v0.2.0/mhsendmail_linux_amd64 && \
	mv mhsendmail_linux_amd64 /usr/local/bin/mhsendmail && \
	chmod +x /usr/local/bin/mhsendmail && \
	groupadd -g 1000 vagrant && \
	useradd -d /var/cache/nginx -c "WPLib vagrant user" -u 1000 -g 1000 -N -s /bin/bash vagrant

# Change user from "nginx" to "vagrant". This is required.

COPY files /

EXPOSE 9000

CMD ["php-fpm5", "-F"]
