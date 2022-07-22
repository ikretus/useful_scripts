#!/bin/sh

rm -f FileList.txt
for i in *.MTS; do echo file \'$i\' >> FileList.txt; done

ffmpeg -f concat -safe 0 -i FileList.txt -c:v libx265 -preset slow -crf 28 -c:a aac -b:a 384k out.mp4
