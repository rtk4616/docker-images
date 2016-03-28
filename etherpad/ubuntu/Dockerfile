FROM ubuntu:14.04

MAINTAINER Osones <docker@osones.io>

RUN apt update && apt install -y \
    build-essential \
    gzip \
    git \
    curl \
    libssl-dev \
    pkg-config \
    nodejs \
    && git clone git://github.com/ether/etherpad-lite.git

EXPOSE 9001

WORKDIR etherpad-lite

CMD ["bin/run.sh", "--root"]
