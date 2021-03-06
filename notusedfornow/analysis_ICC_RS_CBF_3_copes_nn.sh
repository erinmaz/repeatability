#!/bin/bash

MAINDIR=/Users/erin/Desktop/Projects/Repeatability/working
analysis=rRS_e1_cropped_nan.feat/stats/cope1
reg=rRS_e2_cropped_nan_reg.feat/reg/example_func2standard_warp
ref=rRS_e2_cropped_nan_reg.feat/reg/standard
output=/Users/erin/Desktop/Projects/Repeatability/working/ICC_input_RS_CBF/rRS_e1_cropped_nan_feat_copes_nn.txt
for sess in sess1 sess2
do
for sub in R02 R03 R05 R06 R07 R08 R09 R10
do
applywarp -i ${MAINDIR}/${sub}/${sess}/nii/${analysis} -w ${MAINDIR}/${sub}/${sess}/nii/${reg} -r ${MAINDIR}/${sub}/${sess}/nii/${ref} -o ${MAINDIR}/${sub}/${sess}/nii/${analysis}_to_standard_nn --interp=nn
fslchfiletype NIFTI ${MAINDIR}/${sub}/${sess}/nii/${analysis}_to_standard_nn
echo ${MAINDIR}/${sub}/${sess}/nii/${analysis}_to_standard_nn.nii >> $output
done
done
