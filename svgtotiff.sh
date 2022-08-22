#!/bin/sh

# Prevzato z https://gist.github.com/matsen/4263955

# Convert all arguments (assumed SVG) to a TIFF acceptable to PLOS
# Requires Inkscape and ImageMagick 6.8 (doesn't work with 6.6.9)

for i in $@; do
  BN=$(basename $i .svg)
  inkscape --without-gui --export-png="$BN.png" --export-dpi 300 $i
  convert -compress LZW -alpha remove $BN.png $BN.tiff
  mogrify -alpha off $BN.tiff
  rm $BN.png
done
