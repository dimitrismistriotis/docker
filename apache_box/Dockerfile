#
# Started from: 
# http://www.kstaken.com/blog/2013/07/06/how-to-run-apache-under-docker/
# and added php5 etc.
#

FROM ubuntu:12.04

RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y php5
RUN apt-get install -y libapache2-mod-php5
RUN apt-get install -y php5-mysql

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

EXPOSE 80

ENTRYPOINT ["/usr/sbin/apache2"]
CMD ["-D", "FOREGROUND"]
