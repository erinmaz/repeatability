#!/bin/bash
MAINDIR=/Users/erin/Desktop/Projects/Repeatability/working

reg=rHC1_e2_cropped_nan_reg.feat/reg/example_func2standard_warp
ref=rHC1_e2_cropped_nan_reg.feat/reg/standard

i=0

run=(block_gamma15_30 hc1_19 block_gamma15_30 block_gamma15_30 hc1_04 block_gamma15_30 hc1_15 block_gamma15_30 hc1_12 block_gamma15_30 block_gamma15_30 block_gamma15_30 block_gamma15_30 block_gamma15_30 block_gamma15_30 hc1_21)

for sess in sess1 sess2
do
for sub in R02 R03 R05 R06 R07 R08 R09 R10
do

applywarp -i ${MAINDIR}/${sub}/${sess}/nii/srHC1_e2_cropped_${run[$i]}.feat/thresh_zstat1 -w ${MAINDIR}/${sub}/${sess}/nii/${reg} -r ${MAINDIR}/${sub}/${sess}/nii/${ref} -o ${MAINDIR}/${sub}/${sess}/nii/srHC1_e2_cropped_${run[$i]}.feat/thresh_zstat1_to_standard
fslchfiletype NIFTI ${MAINDIR}/${sub}/${sess}/nii/srHC1_e2_cropped_${run[$i]}.feat/thresh_zstat1_to_standard
echo \'${MAINDIR}/${sub}/${sess}/nii/srHC1_e2_cropped_${run[$i]}.feat/thresh_zstat1_to_standard.nii\'
let i=$i+1
done
done

reg=rHC2_e2_cropped_nan_reg.feat/reg/example_func2standard_warp
ref=rHC2_e2_cropped_nan_reg.feat/reg/standard

i=0

run=(hc2_15 block_gamma15_30 hc2_14 block_gamma15_30 block_gamma15_30 block_gamma15_30 hc2_08 block_gamma15_30 block_gamma15_30 block_gamma15_30 block_gamma15_30 hc2_14 block_gamma15_30 hc2_17 block_gamma15_30 block_gamma15_30)

for sess in sess1 sess2
do
for sub in R02 R03 R05 R06 R07 R08 R09 R10
do
applywarp -i ${MAINDIR}/${sub}/${sess}/nii/srHC2_e2_cropped_${run[$i]}.feat/thresh_zstat1 -w ${MAINDIR}/${sub}/${sess}/nii/${reg} -r ${MAINDIR}/${sub}/${sess}/nii/${ref} -o ${MAINDIR}/${sub}/${sess}/nii/srHC2_e2_cropped_${run[$i]}.feat/thresh_zstat1_to_standard
fslchfiletype NIFTI ${MAINDIR}/${sub}/${sess}/nii/srHC2_e2_cropped_${run[$i]}.feat/thresh_zstat1_to_standard
echo \'${MAINDIR}/${sub}/${sess}/nii/srHC2_e2_cropped_${run[$i]}.feat/thresh_zstat1_to_standard.nii\'
let i=$i+1
done
done