#!/bin/sh

for ff in *.mp3; do
    echo ${ff}
    ffmpeg -i ${ff} -c:a copy -map_metadata -1 -loglevel quiet _${ff}
    mv -f _${ff} ${ff}
done
