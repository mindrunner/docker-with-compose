FROM docker:latest
MAINTAINER Lukas Elsner <mail@lukaselsner.de>

RUN apk -U update && apk -U add \
   bash \
   py-pip \
   build-base \
   python2-dev \
   libc-dev \
   libffi-dev \
   openssl-dev \
  && rm -rf /tmp/* \
  && rm -rf /var/cache/apk/*

RUN pip install docker-compose
