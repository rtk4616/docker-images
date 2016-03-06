FROM ubuntu:14.04

MAINTAINER Osones <rgu@osones.io>

RUN apt update \
    && apt upgrade -yf \
    && apt install -y \
    texlive-full \
    build-essential

ADD build-openstack.sh /build-openstack.sh
