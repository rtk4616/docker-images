#!/bin/bash -xe


# Docker

cd /formations/cours/docker

mkdir -vp output-html

for i in [0-9]*.md; do
      cat $i >> slide
done

pandoc slide -t revealjs -f markdown -s -o output-html/index.html --slide-level 3 -V theme=osones -V navigation=frame -V revealjs-url=. --title-prefix="Docker formation"

git clone https://github.com/hakimel/reveal.js.git revealjs

cp  /formations/cours/docker/output-html/index.html /formations/cours/docker/revealjs/index.html
cp -r /formations/images /formations/cours/docker/revealjs/
cp /formations/cours/styles/osones.css /formations/cours/docker/revealjs/css/theme/osones.css
cp -r /formations/cours/docker/revealjs/css /formations/cours/docker/output-html/

# OpenStack

cd /formations/cours/openstack

mkdir -vp output-html

pandoc slide -t revealjs -f markdown -s -o output-html/index.html --slide-level 3 -V theme=osones -V navigation=frame -V revealjs-url=. --title-prefix="OpenStack formation"

git clone https://github.com/hakimel/reveal.js.git revealjs

cp /formations/cours/openstack/output-html/index.html /formations/cours/openstack/revealjs/index.html
cp -r /formations/images /formations/cours/openstack/revealjs/
cp /formations/cours/styles/osones.css /formations/cours/docker/revealjs/css/theme/osones.css
cp -r /formations/cours/openstack/revealjs/css /formations/cours/openstack/output-html/
