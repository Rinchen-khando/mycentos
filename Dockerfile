FROM centos:latest
MAINTAINER KHANDO_BBS3
RUN yum -y install httpd git && git clone https://github.com/Rinchen-khando/mycentos.git /var/www/html
EXPOSE 80
COPY . /var/www/html/

ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]