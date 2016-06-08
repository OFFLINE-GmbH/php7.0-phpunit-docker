FROM ubuntu:16.04
MAINTAINER Tobias Kuendig <tobias@offline.swiss>

RUN apt-get update && apt-get -y install wget git php7.0 php7.0-mysql php7.0-sqlite php7.0-mcrypt php7.0-xml php7.0-gd php7.0-mbstring php7.0-json php-xdebug && apt-get -y autoremove && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN [ ! -f "composer.phar" ] && wget https://getcomposer.org/composer.phar
RUN mv composer.phar /usr/local/bin/composer
RUN /bin/chmod +x /usr/local/bin/composer
RUN /bin/mkdir /tmp/code

WORKDIR /tmp/code

