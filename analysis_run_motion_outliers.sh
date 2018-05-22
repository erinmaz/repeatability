#!/bin/bash
motion_thresh=2
MAINDIR=/Users/erin/Desktop/Projects/Repeatability/working
for r in R02 R03 R05 R06 R07 R08 R09 R10
do 
for s in sess1 sess2
do 
for run in BH1 BH2 HC1 HC2 RS 
do
motion_outliers.sh ${MAINDIR}/${r}/${s}/nii/rp_${run}_e1_cropped.txt ${motion_thresh} >> ${MAINDIR}/motion_outlier_report_thresh2.txt 
done
done
done



