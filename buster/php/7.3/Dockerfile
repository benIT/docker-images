#image name: benit/buster-php-7.3
FROM benit/buster-php

#php
RUN apt-get install -y php7.3
RUN apt-get install -y libapache2-mod-php7.3
RUN apt-get install -y php7.3-fpm

#php packages
RUN apt-get install -y php7.3-bcmath
RUN apt-get install -y php7.3-cli
RUN apt-get install -y php7.3-common
RUN apt-get install -y php7.3-curl
RUN apt-get install -y php7.3-gd
RUN apt-get install -y php7.3-geoip
RUN apt-get install -y php7.3-gmp
RUN apt-get install -y php7.3-imap
RUN apt-get install -y php7.3-intl
RUN apt-get install -y php7.3-json
RUN apt-get install -y php7.3-ldap
RUN apt-get install -y php7.3-mbstring
#RUN apt-get install -y php7.3-mcrypt
RUN apt-get install -y php-memcached
RUN apt-get install -y php-msgpack
RUN apt-get install -y php7.3-mysql
RUN apt-get install -y php7.3-opcache
RUN apt-get install -y php7.3-pgsql
RUN apt-get install -y php7.3-soap
RUN apt-get install -y php7.3-sqlite3
RUN apt-get install -y php7.3-xml
RUN apt-get install -y php7.3-xmlrpc
RUN apt-get install -y php7.3-zip

#enable error reporting
RUN sed -i 's/display_errors = Off/display_errors = On/' /etc/php/7.3/apache2/php.ini
RUN sed -i 's/error_reporting = E_ALL & ~E_DEPRECATED & ~E_STRICT/error_reporting = E_ALL/' /etc/php/7.3/apache2/php.ini

#install composer
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
RUN chmod +x /usr/local/bin/composer