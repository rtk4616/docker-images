#!/bin/bash

cd /formations

mkdir -v docker-s3

cd latex/docker
for i in $(ls -I README.md | grep .md); do
      cat $i >> slide
done
pandoc slide -t revealjs -f markdown -s -o ../../docker-s3/index.html --slide-level 3 -V theme=osones -V navigation=frame -V revealjs-url=.
head ../../docker-s3/index.html

git clone https://github.com/osones/reveal.js revealjs
cd revealjs
git checkout osones
cp -v /formations/docker-s3/index.html /formations/latex/docker/revealjs/index.html

# OpenStack
# Only testing for now

cd /formations
mkdir -v openstack-html-s3
cd latex/openstack
pandoc slide -t revealjs -f markdown -s -o ../../openstack-html-s3/index.html --slide-level 3 -V theme=osones -V navigation=frame -V revealjs-url=.
git clone https://github.com/osones/reveal.js revealjs
cd revealjs
git checkout osones
cp -v /formations/openstack-html-s3/index.html /formations/latex/openstack/revealjs/index.html
