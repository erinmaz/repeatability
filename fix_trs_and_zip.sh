#!/bin/bash
cd /Users/erin/Desktop/Projects/Repeatability/working
for string in sr*e1*nii r*e1*nii sr*e2*nii r*e2*nii
do
for f in `find . -name "$string"`
do
g=`imglob $f`
fslmerge -tr ${g}_tmp ${g} 4
rm $f
mv ${g}_tmp.nii.gz ${g}.nii.gz
done
done
