FROM php:8.2-apache
RUN docker-php-ext-install curl mbstring && a2enmod rewrite
COPY . /var/www/html/
RUN mkdir -p /var/www/html/all && chown -R www-data:www-data /var/www/html
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
EXPOSE 10000
CMD ["apache2-foreground"]
