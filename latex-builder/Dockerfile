FROM ubuntu:14.04

MAINTAINER Osones <docker@osones.io>

RUN apt update && apt install -y \
    texlive \
    texlive-lang-french \
    make \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD build.sh /build.sh

RUN chmod +x /build.sh

ENTRYPOINT ["/build.sh"]
