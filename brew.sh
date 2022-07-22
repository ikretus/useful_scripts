#/bin/sh

brew install apache-spark awk coreutils djview4 djvulibre ffmpeg flac fontconfig freetype \
             gcc ghostscript git glib gmp gnupg gnutls imagemagick lame libtool libusb lsusb \
             lz4 lzo m4 midnight-commander mplayer openblas openexr openjdk@11 openssh pkg-config \
             python@3.9 qt@5 snappy sqlite wget x264 x265 xpdf yasm zeromq

brew install poppler

brew install --cask textmate

# tr -d '\015' <wind-file >unix-file

# ffmpeg -i in.mkv -map 0:0 -map 0:1 -c:v copy -c:a copy out.mkv
# ffmpeg -i in.mp4 -b:a 128k -b:v 2500k -r 30 -s hd720 out.mp4
# ffmpeg -i in.m4a -b:a 128k out.mp3
# ffmpeg -i in.mp3 -b:a 128k -map_metadata -1 out.mp3
# ffmpeg -i in.avi -c:v libx264 out.mp4

# convert -quality 300 1.jpg 1.pdf

# git filter-branch --index-filter 'git rm --cached --ignore-unmatch FILE' --force --prune-empty --tag-name-filter cat -- --all
