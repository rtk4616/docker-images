FROM ubuntu:14.04

MAINTAINER Romain Guichard <rgu@osones.io>

RUN apt update && apt upgrade -yf
RUN apt install -y pandoc
RUN apt install -y texlive-full
RUN apt install -y build-essential
RUN apt install -y wget
RUN wget https://github.com/jgm/pandoc/releases/download/1.16.0.2/pandoc-1.16.0.2-1-amd64.deb
RUN dpkg -i pandoc-1.16.0.2-1-amd64.deb
ADD build-docker.sh /build-docker.sh
ADD build-openstack.sh /build-openstack.sh
