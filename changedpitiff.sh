for i in $@; do
  BN=$(basename $i .tiff)
  cp $BN.tiff $BN.tiff.bak
  convert $BN.tiff -density 300x300 -units pixelsperinch $BN.tiff
done
