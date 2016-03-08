#!/bin/bash -xe

COURS_DIR=/formations/cours
IMG_DIR=/formations/images

for cours in docker openstack; do
    cd /formations/cours/$cours
    mkdir -vp output-html
    if [[ $cours = "docker" ]]; then
        for i in [0-9]*.md; do
            cat $i >> slide
        done
    fi
    pandoc slide -t revealjs -f markdown -s -o output-html/index.html --slide-level 3 -V theme=osones -V navigation=frame -V revealjs-url=. --title-prefix="$cours formation"
    git clone https://github.com/hakimel/reveal.js.git revealjs
    cp  $COURS_DIR/$cours/output-html/index.html $COURS_DIR/$cours/revealjs/index.html
    cp -r $IMG_DIR /$COURS_DIR/$cours/revealjs/
    cp $COURS_DIR/styles/osones.css $COURS_DIR/$cours/revealjs/css/theme/osones.css
    cp -r $COURS_DIR/$cours/revealjs/css $COURS_DIR/$cours/output-html/
done
