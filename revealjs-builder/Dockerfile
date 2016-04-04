FROM ubuntu:16.04

MAINTAINER Osones <docker@osones.io>

ENV PKGVER 1.16.0.2

RUN apt update && apt install -y \
    wget \
    pandoc \
    && wget https://github.com/jgm/pandoc/releases/download/"$PKGVER"/pandoc-"$PKGVER"-1-amd64.deb -P /tmp \
    && apt-get remove -y \
    pandoc \
    wget \
    && dpkg -i /tmp/pandoc-"$PKGVER"-1-amd64.deb \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT ["pandoc"]

CMD ["-t", "revealjs", "-f", "markdown", "-s", "--slide-level", "3", "-V", "theme=osones", "-V", "navigation=frame", "-V", "revealjs-url=http://formation.osones.com/revealjs", "-V", "slideNumber=true"]
