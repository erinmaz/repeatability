#!/bin/bash

MAINDIR=/Users/erin/Desktop/Projects/Repeatability/working

reg=rBH1_e2_cropped_nan_reg.feat/reg/example_func2standard_warp
ref=rBH1_e2_cropped_nan_reg.feat/reg/standard

i=0

#runs with max extent for BH1 e1 bptf analysis (see google sheet Repeatability extent, table Final Table All).
run=(bh1_20 bh1_09 bh1_09 bh1_18 bh1_19 bh1_17 bh1_13 bh1_16 bh1_15 bh1_05 bh1_12 bh1_16 bh1_12 bh1_22 bh1_17 bh1_16)
for sess in sess1 sess2
do
for sub in R02 R03 R05 R06 R07 R08 R09 R10
do
rm ${MAINDIR}/${sub}/${sess}/nii/srBH1_e1_cropped_sub_bptf_${run[$i]}.feat/thresh_zstat1_to_standard*
applywarp -i ${MAINDIR}/${sub}/${sess}/nii/srBH1_e1_cropped_sub_bptf_${run[$i]}.feat/thresh_zstat1 -w ${MAINDIR}/${sub}/${sess}/nii/${reg} -r ${MAINDIR}/${sub}/${sess}/nii/${ref} -o ${MAINDIR}/${sub}/${sess}/nii/srBH1_e1_cropped_sub_bptf_${run[$i]}.feat/thresh_zstat1_to_standard
fslchfiletype NIFTI ${MAINDIR}/${sub}/${sess}/nii/srBH1_e1_cropped_sub_bptf_${run[$i]}.feat/thresh_zstat1_to_standard
echo \'${MAINDIR}/${sub}/${sess}/nii/srBH1_e1_cropped_sub_bptf_${run[$i]}.feat/thresh_zstat1_to_standard.nii\'
let i=$i+1
done
done

reg=rBH2_e2_cropped_nan_reg.feat/reg/example_func2standard_warp
ref=rBH2_e2_cropped_nan_reg.feat/reg/standard
i=0
run=(bh2_12 bh2_15 bh2_03 bh2_15 bh2_16 bh2_18 bh2_16 bh2_23 bh2_19 bh2_16 bh2_09 bh2_20 bh2_13 bh2_13 bh2_20 bh2_17)

for sess in sess1 sess2${analysis}
do
for sub in R02 R03 R05 R06 R07 R08 R09 R10
do
applywarp -i ${MAINDIR}/${sub}/${sess}/nii/srBH2_e1_cropped_sub_bptf_${run[$i]}.feat/thresh_zstat1 -w ${MAINDIR}/${sub}/${sess}/nii/${reg} -r ${MAINDIR}/${sub}/${sess}/nii/${ref} -o ${MAINDIR}/${sub}/${sess}/nii/srBH2_e1_cropped_sub_bptf_${run[$i]}.feat/thresh_zstat1_to_standard
fslchfiletype NIFTI ${MAINDIR}/${sub}/${sess}/nii/srBH2_e1_cropped_sub_bptf_${run[$i]}.feat/thresh_zstat1_to_standard
echo \'${MAINDIR}/${sub}/${sess}/nii/srBH2_e1_cropped_sub_bptf_${run[$i]}.feat/thresh_zstat1_to_standard.nii\'
let i=$i+1
done
done