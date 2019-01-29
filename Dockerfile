FROM php:7.2-apache

COPY output/ /var/www/html/

EXPOSE 80