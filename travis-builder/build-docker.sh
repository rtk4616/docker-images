#!/bin/bash

cd /formations

mkdir -v docker-s3
ls -l

cd markdown/docker
ls -l
for i in $(ls *.md | sort); do
      cat $i >> slide
done
pandoc slide -t revealjs -f markdown -s -o ../../docker-s3/index.html --slide-level 3 -V theme=solarized -V navigation=frame -V revealjs-url=.
head ../../docker-s3/index.html
