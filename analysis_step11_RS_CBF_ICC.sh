#!/bin/bash

MAINDIR=/Users/erin/Desktop/Projects/Repeatability/working
IMAGE=meanCBF_2_rRS_e1_cropped_nan_gm_sm_thr
REGDIR=rRS_e2_cropped_nan_reg.feat/reg

for s in sess1 sess2
do
for r in R02 R03 R05 R06 R07 R08 R09 R10
do

#convert CBF maps to standard space
#applywarp -w ${MAINDIR}/${r}/${s}/nii/${REGDIR}/example_func2standard_warp -r ${MAINDIR}/${r}/${s}/nii/${REGDIR}/standard --interp=nn -i ${MAINDIR}/${r}/${s}/nii/${IMAGE} -o ${MAINDIR}/${r}/${s}/nii/${IMAGE}_to_standard

#fslchfiletype NIFTI ${MAINDIR}/${r}/${s}/nii/${IMAGE}_to_standard

#echo ${MAINDIR}/${r}/${s}/nii/${IMAGE}_to_standard.nii >> ${MAINDIR}/ICC_input/${IMAGE}.txt

meanCBF=`fslstats ${MAINDIR}/${r}/${s}/nii/${IMAGE}_to_standard -M`
echo $r $s $meanCBF >> ${MAINDIR}/RS_GM_CBF.txt
done
done

