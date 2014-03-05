FROM ubuntu:12.04

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get -y update
RUN apt-get -y upgrade

RUN apt-get install -y redis-server

EXPOSE 6379

VOLUME ["/redis-data"]

RUN echo '#!/bin/bash\necho "requirepass ${PASSWORD}\ndir /redis-data" | redis-server -' > /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
