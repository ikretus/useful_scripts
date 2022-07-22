#!/bin/sh

pdftoppm $1 page
for f in *.ppm; do
    convert $f $f.jpg
    rm $f
done
