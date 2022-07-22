#!/bin/sh

[ -n "$1" ] || {
echo "Empty file name"
exit 1
}

fn=$1
code="${2:-FMP4}"

echo $fn $code
echo $code | dd conv=notrunc of="$fn" bs=1 count=${#code} seek=112 > /dev/null 2>&1
echo $code | dd conv=notrunc of="$fn" bs=1 count=${#code} seek=188 > /dev/null 2>&1

echo "patched"
