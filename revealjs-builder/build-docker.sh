#!/bin/bash

cd /formations

mkdir -v docker-s3

cd latex/docker
for i in $(ls -I README.md | grep .md); do
      cat $i >> slide
done
pandoc slide -t revealjs -f markdown -s -o ../../docker-s3/index.html --slide-level 3 -V theme=solarized -V navigation=frame -V revealjs-url=.
head ../../docker-s3/index.html

git clone https://github.com/vsense/reveal.js revealjs
cp -v /formations/docker-s3/index.html /formations/latex/docker/revealjs/index.html
ls revealjs/
