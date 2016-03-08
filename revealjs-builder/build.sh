#!/bin/bash

cd /formations

mkdir -v docker-s3

cd cours/docker
for i in $(ls -I README.md | grep .md); do
      cat $i >> slide
done
pandoc slide -t revealjs -f markdown -s -o ../../docker-s3/index.html --slide-level 3 -V theme=osones -V navigation=frame -V revealjs-url=.
head ../../docker-s3/index.html

git clone https://github.com/osones/reveal.js revealjs
cd revealjs
git checkout osones
cp -v /formations/docker-s3/index.html /formations/cours/docker/revealjs/index.html
cp -rv /formations/images /formations/cours/docker/revealjs/

# OpenStack
# Only testing for now

cd /formations
mkdir -v openstack-html-s3
cd cours/openstack
pandoc slide -t revealjs -f markdown -s -o ../../openstack-html-s3/index.html --slide-level 3 -V theme=osones -V navigation=frame -V revealjs-url=.
git clone https://github.com/osones/reveal.js revealjs
cd revealjs
git checkout osones
cp -v /formations/openstack-html-s3/index.html /formations/cours/openstack/revealjs/index.html
cp -rv /formations/images /formations/cours/openstack/revealjs/
