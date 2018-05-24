#!/bin/bash
MAINDIR=/Users/erin/Desktop/Projects/Repeatability/working
for r in R02 R03 R05 R06 R07 R08 R09 R10
do 
for s in sess1 sess2
do 
fslchfiletype NIFTI ${MAINDIR}/${r}/${s}/nii/rRS_e1_cropped_nan_gm_sm
done
done
