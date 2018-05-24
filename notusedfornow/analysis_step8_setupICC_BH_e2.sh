#!/bin/bash
MAINDIR=/Users/erin/Desktop/Projects/Repeatability/working
reg=rBH1_e2_cropped_nan_reg.feat/reg/example_func2standard_warp
ref=rBH1_e2_cropped_nan_reg.feat/reg/standard
i=0
run=(bh1_17 bh1_11 bh1_15 bh1_16 bh1_11 bh1_15 bh1_12 bh1_18 bh1_15 bh1_16 bh1_18 bh1_13 bh1_13 bh1_21 bh1_15 bh1_17)
for sess in sess1 sess2
do
for sub in R02 R03 R05 R06 R07 R08 R09 R10
do
rm ${MAINDIR}/${sub}/${sess}/nii/srBH1_e2_cropped_${run[$i]}.feat/thresh_zstat1_to_standard.nii.gz
#applywarp -i ${MAINDIR}/${sub}/${sess}/nii/srBH1_e2_cropped_${run[$i]}.feat/thresh_zstat1 -w ${MAINDIR}/${sub}/${sess}/nii/${reg} -r ${MAINDIR}/${sub}/${sess}/nii/${ref} -o ${MAINDIR}/${sub}/${sess}/nii/srBH1_e2_cropped_${run[$i]}.feat/thresh_zstat1_to_standard
#fslchfiletype NIFTI ${MAINDIR}/${sub}/${sess}/nii/srBH1_e2_cropped_${run[$i]}.feat/thresh_zstat1_to_standard
echo \'${MAINDIR}/${sub}/${sess}/nii/srBH1_e2_cropped_${run[$i]}.feat/thresh_zstat1_to_standard.nii\'
let i=$i+1
done
done