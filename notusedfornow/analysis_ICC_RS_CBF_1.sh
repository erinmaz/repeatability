#!/bin/bash

MAINDIR=/Users/erin/Desktop/Projects/Repeatability/working
analysis=meanCBF_2_srRS_e1_cropped
reg=rRS_e2_cropped_nan_reg.feat/reg/example_func2standard_warp
ref=rRS_e2_cropped_nan_reg.feat/reg/standard
output=/Users/erin/Desktop/Projects/Repeatability/working/ICC_input_RS_CBF/${analysis}.txt
for sess in sess1 sess2
do
for sub in R02 R03 R05 R06 R07 R08 R09 R10
do
#applywarp -i ${MAINDIR}/${sub}/${sess}/nii/${analysis} -w ${MAINDIR}/${sub}/${sess}/nii/${reg} -r ${MAINDIR}/${sub}/${sess}/nii/${ref} -o ${MAINDIR}/${sub}/${sess}/nii/${analysis}_to_standard
fslchfiletype NIFTI ${MAINDIR}/${sub}/${sess}/nii/${analysis}_to_standard
echo ${MAINDIR}/${sub}/${sess}/nii/${analysis}_to_standard.nii >> $output
done
done
