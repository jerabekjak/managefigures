#!/bin/sh

# Castecne prevzato z https://gist.github.com/matsen/4263955

# Convert all arguments (assumed png) to a TIFF acceptable to PLOS
# Requires Inkscape and ImageMagick 6.8 (doesn't work with 6.6.9)

for i in $@; do
  BN=$(basename $i .png)
  convert -compress LZW -alpha remove $BN.png $BN.tiff
  mogrify -alpha off $BN.tiff
  rm $BN.png
done
