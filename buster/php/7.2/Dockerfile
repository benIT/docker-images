#image name: benit/buster-php-7.2
FROM benit/buster-php

#php
RUN apt-get install -y php7.2
RUN apt-get install -y libapache2-mod-php7.2
RUN apt-get install -y php7.2-fpm

#php packages
RUN apt-get install -y php7.2-bcmath
RUN apt-get install -y php7.2-cli
RUN apt-get install -y php7.2-common
RUN apt-get install -y php7.2-curl
RUN apt-get install -y php7.2-gd
RUN apt-get install -y php7.2-geoip
RUN apt-get install -y php7.2-gmp
RUN apt-get install -y php7.2-imap
RUN apt-get install -y php7.2-intl
RUN apt-get install -y php7.2-json
RUN apt-get install -y php7.2-ldap
RUN apt-get install -y php7.2-mbstring
#RUN apt-get install -y php7.2-mcrypt
RUN apt-get install -y php7.2-memcached
RUN apt-get install -y php7.2-msgpack
RUN apt-get install -y php7.2-mysql
RUN apt-get install -y php7.2-opcache
RUN apt-get install -y php7.2-pgsql
RUN apt-get install -y php7.2-soap
RUN apt-get install -y php7.2-sqlite3
RUN apt-get install -y php7.2-xml
RUN apt-get install -y php7.2-xmlrpc
RUN apt-get install -y php7.2-zip

#enable error reporting
RUN sed -i 's/display_errors = Off/display_errors = On/' /etc/php/7.2/apache2/php.ini
RUN sed -i 's/error_reporting = E_ALL & ~E_DEPRECATED & ~E_STRICT/error_reporting = E_ALL/' /etc/php/7.2/apache2/php.ini

#install composer
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
RUN chmod +x /usr/local/bin/composer