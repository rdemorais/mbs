FROM php:7.4
RUN apt-get update && apt-get install -y libzip-dev libpq-dev libpng-dev zlib1g-dev git  && \
    docker-php-ext-install  pdo pdo_pgsql zip gd

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
