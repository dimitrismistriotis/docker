#
# Started from: 
# https://index.docker.io/u/angelrr7702/ubuntu-13.10/
# and added php5 etc.
#

FROM stackbrew/ubuntu:13.10
ENV DEBIAN_FRONTEND noninteractive
RUN (locale-gen en_GB en_GB.UTF-8 && dpkg-reconfigure locales)

RUN (apt-get update && apt-get upgrade -y -q && apt-get dist-upgrade -y -q && apt-get -y -q autoclean && apt-get -y -q autoremove)

RUN apt-get install -y apache2
RUN apt-get install -y git
RUN apt-get install -y php5
RUN apt-get install -y libapache2-mod-php5
RUN apt-get install -y php5-curl
RUN apt-get install -y php5-json
RUN apt-get install -y php5-mysql
RUN a2enmod rewrite

ADD default /etc/apache2/sites-available/000-default.conf
ADD php.ini /etc/php5/apache2/php.ini

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

EXPOSE 80

ENTRYPOINT ["/usr/sbin/apache2"]
CMD ["-D", "FOREGROUND"]
