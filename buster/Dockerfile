#image name: benit/buster
FROM debian:buster
RUN apt-get update

#install common web stuffs
RUN apt-get install -y apt-transport-https ca-certificates
RUN apt-get install -y apache2
RUN a2enmod headers
RUN a2enmod ssl
RUN a2enmod rewrite
RUN a2ensite  default-ssl.conf
RUN apt-get install -y postgresql-client
RUN apt-get install -y vim curl wget zip unzip make

#install git
RUN apt-get install -y git
RUN apt-get clean
RUN rm /var/www/html/index.html

#environment variables
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

EXPOSE 80 443 22

ENTRYPOINT ["/usr/sbin/apache2ctl"]
CMD ["-D", "FOREGROUND"]