#image name: benit/stretch-php-7.0
FROM benit/stretch-php

#php
RUN apt-get install -y php7.0
RUN apt-get install -y libapache2-mod-php7.0
RUN apt-get install -y php7.0-fpm

#php packages
RUN apt-get install -y php7.0-bcmath
RUN apt-get install -y php7.0-cli
RUN apt-get install -y php7.0-common
RUN apt-get install -y php7.0-curl
RUN apt-get install -y php7.0-gd
RUN apt-get install -y php7.0-geoip
RUN apt-get install -y php7.0-gmp
RUN apt-get install -y php7.0-imap
RUN apt-get install -y php7.0-intl
RUN apt-get install -y php7.0-json
RUN apt-get install -y php7.0-ldap
RUN apt-get install -y php7.0-mbstring
RUN apt-get install -y php7.0-mcrypt
RUN apt-get install -y php7.0-memcached
RUN apt-get install -y php7.0-msgpack
RUN apt-get install -y php7.0-mysql
RUN apt-get install -y php7.0-opcache
RUN apt-get install -y php7.0-pgsql
RUN apt-get install -y php7.0-soap
RUN apt-get install -y php7.0-sqlite3
RUN apt-get install -y php7.0-xml
RUN apt-get install -y php7.0-xmlrpc
RUN apt-get install -y php7.0-zip

#install composer
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
RUN chmod +x /usr/local/bin/composer