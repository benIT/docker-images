#image name: benit/stretch-php-7.1
FROM benit/stretch-php

#php
RUN apt-get install -y php7.1
RUN apt-get install -y libapache2-mod-php7.1
RUN apt-get install -y php7.1-fpm

#php packages
RUN apt-get install -y php7.1-bcmath
RUN apt-get install -y php7.1-cli
RUN apt-get install -y php7.1-common
RUN apt-get install -y php7.1-curl
RUN apt-get install -y php7.1-gd
RUN apt-get install -y php7.1-geoip
RUN apt-get install -y php7.1-gmp
RUN apt-get install -y php7.1-imap
RUN apt-get install -y php7.1-intl
RUN apt-get install -y php7.1-json
RUN apt-get install -y php7.1-ldap
RUN apt-get install -y php7.1-mbstring
RUN apt-get install -y php7.1-mcrypt
RUN apt-get install -y php7.1-memcached
RUN apt-get install -y php7.1-msgpack
RUN apt-get install -y php7.1-mysql
RUN apt-get install -y php7.1-opcache
RUN apt-get install -y php7.1-pgsql
RUN apt-get install -y php7.1-soap
RUN apt-get install -y php7.1-sqlite3
RUN apt-get install -y php7.1-xml
RUN apt-get install -y php7.1-xmlrpc
RUN apt-get install -y php7.1-zip

#install composer
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
RUN chmod +x /usr/local/bin/composer