FROM ubuntu:14.04

MAINTAINER Osones <docker@osones.io>

RUN apt update && apt install -y \
    build-essential \
    xorg \
    libssl-dev \
    libxrender-dev \
    wget \
    fontconfig \
    xfonts-75dpi \
    && wget http://download.gna.org/wkhtmltopdf/0.12/0.12.2.1/wkhtmltox-0.12.2.1_linux-trusty-amd64.deb \
    && dpkg -i wkhtmltox-0.12.2.1_linux-trusty-amd64.deb \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
