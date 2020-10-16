FROM ubuntu:14.04
MAINTAINER "insu_song <insu@gmail.com>"
LABEL "purpose"="static web service"
RUN apt-get update
RUN apt-get install apache2 -y
ADD ./index.html /var/www/html
ADD ./script.js /var/www/html
ADD ./style.css /var/www/html
WORKDIR /var/www/html
EXPOSE 80
CMD apachectl -D FOREGROUND
