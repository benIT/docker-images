#image name: benit/stretch-php-5.6
FROM benit/stretch-php

#php
RUN apt-get install -y php5.6
RUN apt-get install -y libapache2-mod-php5.6
RUN apt-get install -y php5.6-fpm

#php packages
RUN apt-get install -y php5.6-bcmath
RUN apt-get install -y php5.6-cli
RUN apt-get install -y php5.6-common
RUN apt-get install -y php5.6-curl
RUN apt-get install -y php5.6-gd
RUN apt-get install -y php5.6-geoip
RUN apt-get install -y php5.6-gmp
RUN apt-get install -y php5.6-imap
RUN apt-get install -y php5.6-intl
RUN apt-get install -y php5.6-json
RUN apt-get install -y php5.6-ldap
RUN apt-get install -y php5.6-mbstring
RUN apt-get install -y php5.6-mcrypt
RUN apt-get install -y php5.6-memcached
RUN apt-get install -y php5.6-msgpack
RUN apt-get install -y php5.6-mysql
RUN apt-get install -y php5.6-opcache
RUN apt-get install -y php5.6-pgsql
RUN apt-get install -y php5.6-soap
RUN apt-get install -y php5.6-sqlite3
RUN apt-get install -y php5.6-xml
RUN apt-get install -y php5.6-xmlrpc
RUN apt-get install -y php5.6-zip

#install composer
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
RUN chmod +x /usr/local/bin/composer