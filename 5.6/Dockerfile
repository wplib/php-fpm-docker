FROM alpine:3.5

MAINTAINER WPLib Team <team@wplib.org>

RUN set -x \
  && apk add --no-cache \
  bash \
  curl \
  gnupg \
  imagemagick \
  openssl \
  php5=5.6.30-r0 \
  php5-fpm=5.6.30-r0 \
  php5-bcmath=5.6.30-r0 \
  php5-curl=5.6.30-r0 \
  php5-ftp=5.6.30-r0 \
  php5-gd=5.6.30-r0 \
  php5-gettext=5.6.30-r0 \
  php5-intl=5.6.30-r0 \
  php5-iconv=5.6.30-r0 \
  php5-json=5.6.30-r0 \
  php5-mcrypt=5.6.30-r0 \
  php5-mysqli=5.6.30-r0 \
  php5-opcache=5.6.30-r0 \
  php5-openssl=5.6.30-r0 \
  php5-pcntl=5.6.30-r0 \
  php5-pspell=5.6.30-r0 \
  php5-xdebug=2.5.0-r1 \
  php5-xml=5.6.30-r0 \
  php5-zip=5.6.30-r0 \
  && mkdir -p /run/php \
  && ln -sf /proc/self/fd/2 /var/log/php-fpm.log \
  && wget https://github.com/mailhog/mhsendmail/releases/download/v0.2.0/mhsendmail_linux_amd64 \
  && mv mhsendmail_linux_amd64 /usr/local/bin/mhsendmail \
  && chmod +x /usr/local/bin/mhsendmail

COPY files /

EXPOSE 9000

CMD ["php-fpm5", "-F"]