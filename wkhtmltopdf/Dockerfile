FROM ubuntu:14.04

MAINTAINER Osones <docker@osones.io>

RUN apt update && apt install -y \
    wkhtmltopdf \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT ["wkhtmltopdf"]

