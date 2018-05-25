#!/bin/bash

MAINDIR=/Users/erin/Desktop/Projects/Repeatability/working

for r in R02 R03 R05 R06 R07 R08 R09 R10
do
for sess in sess1 sess2
do
for run in BH1 BH2 HC1 HC2
do
perfusion_subtract ${MAINDIR}/${r}/${sess}/nii/r${run}_e1_cropped_nan_gm_sm ${MAINDIR}/${r}/${sess}/nii/r${run}_e1_cropped_nan_gm_sm_sub -m
fslmaths ${MAINDIR}/${r}/${sess}/nii/r${run}_e1_cropped_nan_gm_sm_sub -bptf -1 2 ${MAINDIR}/${r}/${sess}/nii/r${run}_e1_cropped_nan_gm_sm_sub_bptf
done
done
done