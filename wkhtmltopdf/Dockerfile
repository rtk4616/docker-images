FROM ubuntu:16.04

MAINTAINER Osones <docker@osones.io>

RUN apt update && apt install -y \
    wkhtmltopdf \
    xvfb \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT ["xvfb-run", "wkhtmltopdf"]

