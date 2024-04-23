FROM debian:bullseye

EXPOSE 9000

COPY ./tools/script.sh /tmp/script.sh

RUN apt-get update -y \
	&& apt-get upgrade -y \
	&& apt-get install -y php php-fpm php-mysql curl mariadb-client && \
	mkdir -p /run/php && chown -R www-data:www-data /run/php && usermod -G www-data -a www-data && chmod -R 755 /run/php && \ 
	mkdir -p /var/www/html && chown -R www-data:www-data /var/www/html && chmod -R 755 /var/www/html && \
	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp && \
	chmod +x /usr/local/bin/wp && \
	chmod +x /tmp/script.sh

RUN sed -i 's/listen = \/run\/php\/php7.4-fpm.sock/listen = 0.0.0.0:9000/g' /etc/php/7.4/fpm/pool.d/www.conf

ENTRYPOINT [ "/tmp/script.sh" ]
