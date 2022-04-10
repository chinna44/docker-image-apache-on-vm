FROM centos:7
MAINTAINER giridhar
RUN yum update -y \
    && yum install httpd -y
COPY ./index.html /var/www/html/
COPY ./conf/vhost.conf /etc/httpd/conf.modules.d/
EXPOSE 80
CMD [“/usr/sbin/httpd”,” -D”,” FOREGROUND”]
