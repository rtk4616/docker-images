FROM ubuntu:14.04

MAINTAINER Osones <rgu@osones.io>

RUN apt update \
    && apt upgrade -yf \
    && apt install -y \
    texlive \
    texlive-lang-french \
    make

ADD build-openstack.sh /build-openstack.sh
