FROM centos:7
MAINTAINER giridhar
RUN yum update -y \
    && yum install httpd -y
COPY ./index.html /var/www/html/
COPY ./conf/vhost.conf /etc/httpd/conf.modules.d/
RUN echo "ServerName localhost" >> /etc/httpd/conf/httpd.conf
EXPOSE 80
ENTRYPOINT /usr/sbin/httpd -D start && /bin/bash
