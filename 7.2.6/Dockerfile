FROM alpine:edge

MAINTAINER WPLib Team <team@wplib.org>

ENV HOME /root

# filter mod_xml pcre 
RUN apk update && \
	apk add --no-cache bash curl gnupg imagemagick openssl shadow pcre php7=7.2.6-r0 && \
	apk add --no-cache php7-bcmath=7.2.6-r0 php7-ctype=7.2.6-r0 php7-curl=7.2.6-r0 \
		php7-dom=7.2.6-r0 php7-exif=7.2.6-r0 php7-fileinfo=7.2.6-r0 php7-fpm=7.2.6-r0 \
		php7-ftp=7.2.6-r0 php7-gd=7.2.6-r0 php7-gettext=7.2.6-r0 php7-iconv=7.2.6-r0 \
		php7-imagick=3.4.3-r8 php7-intl=7.2.6-r0 php7-json=7.2.6-r0 \
		php7-mbstring=7.2.6-r0 php7-mcrypt=1.0.1-r0 php7-mysqli=7.2.6-r0 \
		php7-opcache=7.2.6-r0 php7-openssl=7.2.6-r0 php7-pcntl=7.2.6-r0 \
		php7-pspell=7.2.6-r0 php7-session=7.2.6-r0 php7-sockets=7.2.6-r0 \
		php7-sodium=7.2.6-r0 php7-ssh2=1.1.2-r2 php7-xdebug=2.6.0-r1 php7-xml=7.2.6-r0 \
		php7-xmlreader=7.2.6-r0 php7-xmlrpc=7.2.6-r0 php7-zip=7.2.6-r0 && \
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
