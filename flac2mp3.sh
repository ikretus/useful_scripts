#!/bin/sh

for f in *.flac; do
    flac -cd "$f" | lame -V 2 -b 256 - "${f%.*}".mp3
done
