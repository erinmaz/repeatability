#!/bin/bash
MAINDIR=/Users/erin/Desktop/Projects/Repeatability/working
for r in R02 R03 R05 R06 R07 R08 R09 R10
do 
for s in sess1 sess2
do 
for run in RS BH1 BH2 HC1 HC2
do
applywarp -i ${MAINDIR}/${r}/${s}/spm_gm_mask -r ${MAINDIR}/${r}/${s}/nii/r${run}_e2_cropped_nan_reg.feat/reg/example_func -o ${MAINDIR}/${r}/${s}/nii/spm_gm_mask2${run}_tmp --postmat=${MAINDIR}/${r}/${s}/nii/r${run}_e2_cropped_nan_reg.feat/reg/highres2example_func.mat --interp=trilinear
fslmaths ${MAINDIR}/${r}/${s}/nii/spm_gm_mask2${run}_tmp -thr 0.5 -bin ${MAINDIR}/${r}/${s}/nii/spm_gm_mask2${run}
thrtmp=`fslstats ${MAINDIR}/${r}/${s}/nii/r${run}_e2_cropped_nan_reg.feat/example_func -p 98`
thr=`awk -v val=$thrtmp 'BEGIN { print val / 3 }'`
fslmaths ${MAINDIR}/${r}/${s}/nii/r${run}_e2_cropped_nan_reg.feat/example_func -thr $thr -bin -fillh ${MAINDIR}/${r}/${s}/nii/r${run}_e2_cropped_nan_reg.feat/mask33
bet ${MAINDIR}/${r}/${s}/nii/r${run}_e2_cropped_nan_reg.feat/example_func ${MAINDIR}/${r}/${s}/nii/r${run}_e2_cropped_nan_reg.feat/example_func_brain -f 0.4 -m
fslmaths ${MAINDIR}/${r}/${s}/nii/r${run}_e2_cropped_nan_reg.feat/mask33 -mas ${MAINDIR}/${r}/${s}/nii/r${run}_e2_cropped_nan_reg.feat/example_func_brain_mask ${MAINDIR}/${r}/${s}/nii/r${run}_e2_cropped_nan_reg.feat/mask33_bet
fslmaths ${MAINDIR}/${r}/${s}/nii/spm_gm_mask2${run} -mas ${MAINDIR}/${r}/${s}/nii/r${run}_e2_cropped_nan_reg.feat/mask33_bet ${MAINDIR}/${r}/${s}/nii/spm_gm_mask2${run}_clean
fsleyes ${MAINDIR}/${r}/${s}/nii/r${run}_e2_cropped_nan_reg.feat/example_func ${MAINDIR}/${r}/${s}/nii/spm_gm_mask2${run}_clean -cm Red
done
done
done
