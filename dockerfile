# Dockerfile (raiz do projeto)
FROM php:8.1-apache
COPY app/ /var/www/html/
RUN docker-php-ext-install mysqli
