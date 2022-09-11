FROM wordpress:php8.1-apache
RUN apt-get update && \
apt-get install -y  --no-install-recommends ssl-cert && \
rm -r /var/lib/apt/lists/*

COPY ./conf/php/custom.ini /usr/local/etc/php/conf.d/custom.ini
# Enable apache mods.
RUN a2ensite default-ssl
RUN a2enmod rewrite
RUN a2enmod http2
RUN a2enmod headers
RUN a2enmod ssl