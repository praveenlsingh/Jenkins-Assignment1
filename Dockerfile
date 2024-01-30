FROM ubuntu
RUN apt-get update
RUN apt-get install apache2 -y
ADD . /var/www/html/
EXPOSE 82
ENTRYPOINT apachectl -D FOREGROUND

