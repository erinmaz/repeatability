#!/bin/bash
MAINDIR=/Users/erin/Desktop/Projects/Repeatability/working
for r in R02 R03 R05 R06 R07 R08 R09 R10
do 
for s in sess1 sess2
do 
for run in RS BH1 BH2 HC1 HC2
do
for e in e2
do
fslmaths ${MAINDIR}/${r}/${s}/nii/r${run}_${e}_cropped_nan -mas ${MAINDIR}/${r}/${s}/nii/spm_gm_mask2${run}_clean -kernel gauss 3.4 -fmedian ${MAINDIR}/${r}/${s}/nii/r${run}_${e}_cropped_nan_gm_sm
done
for e in e1
do
fslmaths ${MAINDIR}/${r}/${s}/nii/r${run}_${e}_cropped -nan -mas ${MAINDIR}/${r}/${s}/nii/spm_gm_mask2${run}_clean -kernel gauss 3.4 -fmedian ${MAINDIR}/${r}/${s}/nii/r${run}_${e}_cropped_nan_gm_sm
done
done
done
done