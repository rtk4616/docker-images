#!/bin/bash -xe

COURS_DIR=/formations/cours
IMG_DIR=/formations/images
LIST=/formations/cours/list.md

git clone https://github.com/hakimel/reveal.js.git $COURS_DIR/revealjs

while line; do
    cours=$(echo $line | cut -d; -f1)
    modules=$(echo $line | cut -d; -f2)
    mkdir $COURS_DIR/output-html
    for module in $(echo $modules); do
        cat $COURS_DIR/$module >> $COURS_DIR/slide-$cours
    done
    pandoc $COURS_DIR/slide-$cours -t revealjs -f markdown -s -o $COURS_DIR/output-html/"$cours".html --slide-level 3 -V theme=osones -V navigation=frame -V revealjs-url=.
done < $LIST

cp  $COURS_DIR/output-html/*.html $COURS_DIR/revealjs/
cp -r $IMG_DIR $COURS_DIR/revealjs/
cp $COURS_DIR/styles/osones.css $COURS_DIR/revealjs/css/theme/osones.css
cp -r $COURS_DIR/revealjs/css $COURS_DIR/output-html/
