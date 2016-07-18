From php:5-apache

Run apt-get update && \
        apt-get install -y libmemcached-dev zlib1g-dev libmysqlclient-dev &&\
        pecl install memcached && \
        docker-php-ext-install pdo pdo_mysql

ADD createdb.php /var/www/html/createdb.php
ADD createtable.php /var/www/html/createtable.php
ADD add_entry.php /var/www/html/add_entry.php
ADD view_blog.php /var/www/html/view_blog.php
ADD index.html /var/www/html/index.html
