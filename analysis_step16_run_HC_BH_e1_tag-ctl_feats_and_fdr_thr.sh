#!/bin/bash

MAINDIR=/Users/erin/Desktop/Projects/Repeatability/working

for r in R02 R03 R05 R06 R07 R08 R09 R10
do
for sess in sess1 sess2
do
for run in BH1 BH2 HC1 HC2
do
sed 's/RS/'${run}'/g' ${MAINDIR}/${r}/${sess}/nii/rRS_e1_cropped_nan_gm_sm.feat/design.fsf > ${MAINDIR}/${r}/${sess}/nii/r${run}_e1_cropped_nan_gm_sm.fsf
feat ${MAINDIR}/${r}/${sess}/nii/r${run}_e1_cropped_nan_gm_sm.fsf
ttologp -logpout ${MAINDIR}/${r}/${sess}/nii/r${run}_e1_cropped_nan_gm_sm.feat/stats/logp1 ${MAINDIR}/${r}/${sess}/nii/r${run}_e1_cropped_nan_gm_sm.feat/stats/varcope1 ${MAINDIR}/${r}/${sess}/nii/r${run}_e1_cropped_nan_gm_sm.feat/stats/cope1 `cat ${MAINDIR}/${r}/${sess}/nii/r${run}_e1_cropped_nan_gm_sm.feat/stats/dof`
fslmaths ${MAINDIR}/${r}/${sess}/nii/r${run}_e1_cropped_nan_gm_sm.feat/stats/logp1 -exp  ${MAINDIR}/${r}/${sess}/nii/r${run}_e1_cropped_nan_gm_sm.feat/stats/p1
outstr=`fdr -i ${MAINDIR}/${r}/${sess}/nii/r${run}_e1_cropped_nan_gm_sm.feat/stats/p1 -q 0.05`
for word in $outstr
do
thr=$word
done
one_minus_thr=`awk -v thr=$thr 'BEGIN {print 1 - thr}'`
fslmaths ${MAINDIR}/${r}/${sess}/nii/r${run}_e1_cropped_nan_gm_sm.feat/stats/p1 -mul -1 -add 1 -thr ${one_minus_thr} -mas ${MAINDIR}/${r}/${sess}/nii/r${run}_e1_cropped_nan_gm_sm.feat/stats/p1 ${MAINDIR}/${r}/${sess}/nii/r${run}_e1_cropped_nan_gm_sm.feat/stats/thresh_1_minus_p1
done
done
done



