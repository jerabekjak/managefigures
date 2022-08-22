#!/bin/sh

# Check dpi resolution of png or tiff (muliple) files

identify -units PixelsPerInch -format '%[fx:int(resolution.x)]\n' $@
