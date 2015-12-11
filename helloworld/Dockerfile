FROM vsense/nginx:php-fpm
RUN mkdir /var/www/storage
RUN chown nginx /var/www/storage
COPY file.php /var/www/index.php
COPY nginx.conf /etc/nginx/nginx.conf
