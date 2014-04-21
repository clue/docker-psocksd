FROM ubuntu
MAINTAINER Christian Lück <christian@lueck.tv>

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list && apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y php5-cli php5-json git curl

RUN useradd -m -d /home/psocksd psocksd
USER psocksd
WORKDIR /home/psocksd

#RUN curl -s http://www.lueck.tv/psocksd/psocksd.phar > psocksd.phar
#CMD php psocksd.phar

RUN git clone https://github.com/clue/psocksd.git && cd psocksd && curl -s https://getcomposer.org/installer | php
RUN cd psocksd && php composer.phar install
CMD php psocksd/bin/psocksd

EXPOSE 9050