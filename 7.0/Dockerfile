FROM alpine:3.5

MAINTAINER WPLib Team <team@wplib.org>

RUN set -x \
  && apk add --no-cache \
  bash \
  curl \
  gnupg \
  imagemagick \
  openssl \
  php7=7.0.16-r0 \
  php7-fpm=7.0.16-r0 \
  php7-bcmath=7.0.16-r0 \
  php7-curl=7.0.16-r0 \
  php7-dom=7.0.16-r0 \
  php7-ftp=7.0.16-r0 \
  php7-gd=7.0.16-r0 \
  php7-gettext=7.0.16-r0 \
  php7-intl=7.0.16-r0 \
  php7-iconv=7.0.16-r0 \
  php7-json=7.0.16-r0 \
  php7-mbstring=7.0.16-r0 \
  php7-mcrypt=7.0.16-r0 \
  php7-mysqli=7.0.16-r0 \
  php7-opcache=7.0.16-r0 \
  php7-openssl=7.0.16-r0 \
  php7-pcntl=7.0.16-r0 \
  php7-phar=7.0.16-r0 \
  php7-pspell=7.0.16-r0 \
  php7-session=7.0.16-r0 \
  php7-xdebug=2.5.0-r1 \
  php7-xml=7.0.16-r0 \
  php7-zip=7.0.16-r0 \
  && ln -s /usr/bin/php7 /usr/bin/php \
  && mkdir -p /run/php \
  && ln -sf /proc/self/fd/2 /var/log/php7/error.log \
  && wget https://github.com/mailhog/mhsendmail/releases/download/v0.2.0/mhsendmail_linux_amd64 \
  && mv mhsendmail_linux_amd64 /usr/local/bin/mhsendmail \
  && chmod +x /usr/local/bin/mhsendmail

COPY files /

EXPOSE 9000

CMD ["php-fpm7", "-F"]