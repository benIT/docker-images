#image name: benit/stretch-php
FROM benit/stretch

#apt source list to get php versions
RUN wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
RUN sh -c 'echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list'
RUN apt-get update

#install phing
RUN wget https://www.phing.info/get/phing-latest.phar -P /tmp
RUN mv /tmp/phing-latest.phar /usr/local/bin/phing
RUN chmod +x /usr/local/bin/phing