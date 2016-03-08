FROM ubuntu:14.04

MAINTAINER Osones <docker@osones.io>

ENV PKGVER 1.16.0.2

RUN apt update && apt install -y \
    wget \
    git \
    pandoc \
    && wget https://github.com/jgm/pandoc/releases/download/"$PKGVER"/pandoc-"$PKGVER"-1-amd64.deb -P /tmp \
    && dpkg -i /tmp/pandoc-"$PKGVER"-1-amd64.deb \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD build.sh /build.sh
RUN chmod +x /build.sh

ENTRYPOINT ["/build.sh"]
