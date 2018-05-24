#!/bin/bash
MAINDIR=/Users/erin/Desktop/Projects/Repeatability/working
for r in R02 R03 R05 R06 R07 R08 R09 R10
do 
for s in sess1 sess2
do 
for run in HC1_e2 HC2_e2 BH1_e2 BH2_e2
do
run_feat_reg.sh ${MAINDIR}/${r}/${s}/nii/sr${run}_cropped ${MAINDIR}/${r}/${s}/T1_brain ${MAINDIR}/${r}/${s}/nii/sr${run}_cropped_reg.feat /Users/erin/Desktop/Projects/Repeatability/code_2018/reg_e2.fsf
done
done
done



