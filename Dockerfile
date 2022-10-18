FROM suselinux

RUN zypper update
RUN zypper in -y httpd
RUN zypper in -y php

COPY ./index.php /var/www/html/index.php


CMD ["/usr/sbin/httpd","-D", "FOREGROUND"]

EXPOSE 80
