#!/bin/bash -xe

COURS_DIR=/home/rguichard/formations/cours
IMG_DIR=/home/rguichard/formations/images
LIST=/home/rguichard/formations/cours/list.md

git clone https://github.com/hakimel/reveal.js.git $COURS_DIR/revealjs
mkdir $COURS_DIR/output-html

while IFS=: read cours modules; do
    for module in $(echo $modules); do
        cat $COURS_DIR/$module >> $COURS_DIR/slide-$cours
    done
    pandoc $COURS_DIR/slide-$cours -t revealjs -f markdown -s -o $COURS_DIR/output-html/"$cours".html --slide-level 3 -V theme=osones -V navigation=frame -V revealjs-url=.
done < $LIST

# cp into revealjs/ for web browser visualization or pdf generation
cp  $COURS_DIR/output-html/*.html $COURS_DIR/revealjs/
cp -r $IMG_DIR $COURS_DIR/revealjs/
cp $COURS_DIR/styles/osones.css $COURS_DIR/revealjs/css/theme/osones.css

# cp into output-html/ for push to S3
cp -r $COURS_DIR/revealjs/css $COURS_DIR/output-html/
cp -r $IMG_DIR $COURS_DIR/output-html/
cp -r $COURS_DIR/revealjs/css $COURS_DIR/output-html/
