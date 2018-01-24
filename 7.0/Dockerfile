FROM alpine:3.5

MAINTAINER WPLib Team <team@wplib.org>

ENV HOME /root

ENV DEBIAN_FRONTEND noninteractive

RUN set -x; \
	apk update; \
	apk add --no-cache bash curl gnupg imagemagick openssl; \
	apk add --no-cache php7=7.0.25-r0 php7-fpm=7.0.25-r0 php7-bcmath=7.0.25-r0 php7-curl=7.0.25-r0 \
		php7-dom=7.0.25-r0 php7-ftp=7.0.25-r0 php7-gd=7.0.25-r0 php7-gettext=7.0.25-r0 \
		php7-intl=7.0.25-r0 php7-iconv=7.0.25-r0 php7-json=7.0.25-r0 php7-mbstring=7.0.25-r0 \
		php7-mcrypt=7.0.25-r0 php7-mysqli=7.0.25-r0 php7-opcache=7.0.25-r0 php7-openssl=7.0.25-r0 \
		php7-pcntl=7.0.25-r0 php7-pspell=7.0.25-r0 php7-session=7.0.25-r0 php7-ctype=7.0.25-r0 \
		php7-xml=7.0.25-r0 php7-zip=7.0.25-r0 php7-xdebug=2.5.0-r1; \
	mkdir -p /run/php; \
	wget https://github.com/mailhog/mhsendmail/releases/download/v0.2.0/mhsendmail_linux_amd64; \
	mv mhsendmail_linux_amd64 /usr/local/bin/mhsendmail; \
	chmod +x /usr/local/bin/mhsendmail

COPY files /

EXPOSE 9000

CMD ["php-fpm7", "-F"]
