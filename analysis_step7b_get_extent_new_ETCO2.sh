#!/bin/bash
for sub in R02 R03 R05 R06 R07 R08 R09 R10
do
for sess in sess1 sess2
do
for run in bh1_01 bh1_02 bh1_03 bh1_04 bh1_05 bh1_06 bh1_07 bh1_08 bh1_09 bh1_10 bh1_11 bh1_12 bh1_13 bh1_14 bh1_15 bh1_16
do
echo -n $sub $sess $run " "
fslstats /Users/erin/Desktop/Projects/Repeatability/working/${sub}/${sess}/nii/srBH1_e2_cropped_${run}.feat/thresh_zstat1 -V
done
done
done
