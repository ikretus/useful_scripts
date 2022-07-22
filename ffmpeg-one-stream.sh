#!/bin/sh

ffmpeg -i $1 -map 0:0 -map 0:1 -c:v copy -c:a copy "$1.o.mkv"
