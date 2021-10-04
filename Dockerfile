FROM php:7.4-fpm

RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

COPY docker/php/conf.d/xdebug.ini /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
COPY docker/php/conf.d/error_reporting.ini /usr/local/etc/php/conf.d/error_reporting.ini

EXPOSE 80