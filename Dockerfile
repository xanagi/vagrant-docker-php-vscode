FROM php:7-apache

RUN apt-get update
RUN apt-get install wget -y

# xdebug
RUN pecl install xdebug \
    && docker-php-ext-enable xdebug
COPY ./conf.d/xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini

RUN mkdir /var/log/php \
    && chown www-data:www-data /var/log/php

# phpunit
RUN wget -O phpunit https://phar.phpunit.de/phpunit-7.phar \
    && chmod +x phpunit \
    && mv phpunit /usr/local/bin

COPY www/ /var/www/

