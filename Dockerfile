FROM centos:latest

MAINTAINER NewstarCorporation

RUN yum -y install httpd

COPY * /var/www/html/

EXPOSE 80

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
