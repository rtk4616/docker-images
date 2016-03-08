#!/bin/bash

cd /formations/cours/docker
mkdir -v output-html
for i in $(ls -I README.md | grep .md); do
      cat $i >> slide
done
pandoc slide -t revealjs -f markdown -s -o output-html/index.html --slide-level 3 -V theme=osones -V navigation=frame -V revealjs-url=. --title-prefix="Docker formation"
git clone https://github.com/osones/reveal.js revealjs
cd revealjs
git checkout osones
cp -v /formations/cours/docker/output-html/index.html /formations/cours/docker/revealjs/index.html
cp -rv /formations/images /formations/cours/docker/revealjs/

# OpenStack
# Only testing for now

cd /formations/cours/openstack
mkdir -v output-html
pandoc slide -t revealjs -f markdown -s -o output-html/index.html --slide-level 3 -V theme=osones -V navigation=frame -V revealjs-url=. --title-prefix="OpenStack formation"
git clone https://github.com/osones/reveal.js revealjs
cd revealjs
git checkout osones
cp -v /formations/cours/openstack/output-html/index.html /formations/cours/openstack/revealjs/index.html
cp -rv /formations/images /formations/cours/openstack/revealjs/
