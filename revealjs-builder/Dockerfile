FROM ubuntu:14.04

MAINTAINER Osones <rgu@osones.io>

RUN apt update \
    && apt upgrade -yf \
    && apt install -y \
    pandoc \
    wget \
    git
RUN wget https://github.com/jgm/pandoc/releases/download/1.16.0.2/pandoc-1.16.0.2-1-amd64.deb
RUN dpkg -i pandoc-1.16.0.2-1-amd64.deb

ADD build-docker.sh /build-docker.sh
