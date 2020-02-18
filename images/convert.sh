#!/bin/sh

convert background-source.jpg -blur 0x8 -resize 640x480 /tmp/background.png
convert /tmp/background.png -blur 0x8 -resize 200% -sampling-factor 4:2:0 -strip -quality 95 -interlace JPEG -colorspace RGB background.jpg

convert /tmp/background.png -resize 10% -blur 0x8 -sampling-factor 4:2:0 -strip -quality 85 -interlace JPEG -colorspace RGB background-small.jpg

convert portrait-source.jpg -resize 384x384 -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -colorspace RGB portrait.jpg
