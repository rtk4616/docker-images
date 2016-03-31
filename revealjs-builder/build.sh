#!/bin/bash -xe

COURS_DIR=/formations/cours
IMG_DIR=/formations/images
LIST=/formations/cours/list.md

mkdir -p $COURS_DIR/output-html/revealjs/css/theme

while IFS=: read cours modules; do
    for module in $modules; do
        cat $COURS_DIR/$module >> $COURS_DIR/slide-$cours
    done
    sed 's/^## /### /' $COURS_DIR/slide-$cours > tmp_slide-$cours
    mv tmp_slide-$cours $COURS_DIR/slide-$cours
    pandoc $COURS_DIR/slide-$cours -t revealjs -f markdown -s -o $COURS_DIR/output-html/"$cours".html --slide-level 3 -V theme=osones -V navigation=frame -V revealjs-url="http://formation.osones.com/revealjs" -V slideNumber="true"
done < $LIST

# cp into output-html/ for push to S3
cp -r $COURS_DIR/styles/osones.css $COURS_DIR/output-html/revealjs/css/theme
cp -r $IMG_DIR $COURS_DIR/output-html/
