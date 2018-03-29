#!/bin/bash
cd /Users/erin/Desktop/Projects/Repeatability/working
#haven't defined mask
for f in `find . -name "sr*e1_cropped.nii.gz*"`
do
in=`imglob $f` #realigned E1 data from asltbx
mask=`imglob $2` #mean mask
perfusion_subtract ${in} ${in}_sub -m
tsnr=`tsnr_calc.sh ${in}_sub $mask`
echo $in $tsnr
done