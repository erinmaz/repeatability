#!/bin/bash
MAINDIR=/Users/erin/Desktop/Projects/Repeatability/working
for r in R02 R03 R05 R06 R07 R08 R09 R10
do 
for s in sess1 sess2
do 
for run in HC1_e1 HC1_e2 HC2_e1 HC2_e2 RS_e1 RS_e2 BH1_e1 BH1_e2 BH2_e1 BH2_e2
do
fslmerge -tr ${MAINDIR}/${r}/${s}/nii/sr${run}_cropped.nii  ${MAINDIR}/${r}/${s}/nii/sr${run}_cropped 4
rm ${MAINDIR}/${r}/${s}/nii/sr${run}_cropped.nii
done
done
done



