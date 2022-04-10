FROM centos:7
RUN yum update -y
RUN yum install httpd -y
COPY ./index.html /var/www/html/
EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]
