#!/bin/bash
MAINDIR=/Users/erin/Desktop/Projects/Repeatability/working
for sub in R02 R03 R05 R06 R07 R08 R09 R10
do
for sess in sess1 sess2
do
fslmaths ${MAINDIR}/${sub}/${sess}/c2T1 -thr .8 -bin ${MAINDIR}/${sub}/${sess}/c2T1.8
for run in BH1 BH2 HC1 HC2 RS
do
flirt -in ${MAINDIR}/${sub}/${sess}/c2T1.8 -ref ${MAINDIR}/${sub}/${sess}/nii/r${run}_e2_cropped_nan_reg.feat/reg/example_func -applyxfm -init ${MAINDIR}/${sub}/${sess}/nii/r${run}_e2_cropped_nan_reg.feat/reg/highres2example_func.mat -interp nearestneighbour -out ${MAINDIR}/${sub}/${sess}/nii/c2T1.8_to_${run}
#fsleyes ${MAINDIR}/${sub}/${sess}/nii/r${run}_e2_cropped_nan_reg.feat/reg/example_func ${MAINDIR}/${sub}/${sess}/nii/c2T1.8_to_${run} 
#spot check a few
done
done
done

