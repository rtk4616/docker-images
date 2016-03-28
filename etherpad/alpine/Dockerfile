FROM alpine:3.2

MAINTAINER Osones <docker@osones.io>

RUN apk -U add \
    build-base \
    gzip \
    git \
    curl \
    nodejs \
    && git clone git://github.com/ether/etherpad-lite.git

EXPOSE 9001

WORKDIR etherpad-lite

CMD ["bin/run.sh", "--root"]
