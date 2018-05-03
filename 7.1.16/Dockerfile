FROM alpine:3.6

MAINTAINER WPLib Team <team@wplib.org>

ENV HOME /root

RUN apk update && \
	apk add --no-cache bash curl gnupg imagemagick openssl shadow && \
	apk add --no-cache php7=7.1.16-r0 php7-fpm=7.1.16-r0 php7-bcmath=7.1.16-r0 php7-curl=7.1.16-r0 \
		php7-dom=7.1.16-r0 php7-ftp=7.1.16-r0 php7-gd=7.1.16-r0 php7-gettext=7.1.16-r0 \
		php7-intl=7.1.16-r0 php7-iconv=7.1.16-r0 php7-json=7.1.16-r0 php7-mbstring=7.1.16-r0 \
		php7-mcrypt=7.1.16-r0 php7-mysqli=7.1.16-r0 php7-opcache=7.1.16-r0 php7-openssl=7.1.16-r0 \
		php7-pcntl=7.1.16-r0 php7-pspell=7.1.16-r0 php7-session=7.1.16-r0 php7-ctype=7.1.16-r0 \
		php7-xml=7.1.16-r0 php7-zip=7.1.16-r0 php7-xdebug=2.5.3-r1 php7-pcntl=7.1.16-r0 php7-imagick=3.4.3-r2 php7-zlib=7.1.16-r0 && \
	mkdir -p /run/php && \
	wget https://github.com/mailhog/mhsendmail/releases/download/v0.2.0/mhsendmail_linux_amd64 && \
	mv mhsendmail_linux_amd64 /usr/local/bin/mhsendmail && \
	chmod +x /usr/local/bin/mhsendmail && \
	mkdir -p /var/mail && \
	groupadd -g 1000 vagrant && \
	useradd -d /var/cache/nginx -c "WPLib vagrant user" -u 1000 -g 1000 -N -s /bin/bash vagrant

# Change user from "nginx" to "vagrant". This is required.

COPY container.json /etc/container.json
COPY files /

EXPOSE 9000

CMD ["php-fpm7", "-F"]
