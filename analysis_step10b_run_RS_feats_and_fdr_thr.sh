#!/bin/bash

MAINDIR=/Users/erin/Desktop/Projects/Repeatability/working
#manually ran for R02 sess1

sed 's/sess1/sess2/g' ${MAINDIR}/R02/sess1/nii/rRS_e1_cropped_nan_gm_sm.feat/design.fsf > ${MAINDIR}/R02/sess2/nii/rRS_e1_cropped_nan_gm_sm.fsf
feat ${MAINDIR}/R02/sess2/nii/rRS_e1_cropped_nan_gm_sm.fsf &

for r in R03 R05 R06 R07 R08 R09 R10
do
for sess in sess1 sess2
do
sed 's/R02/'${r}'/g' ${MAINDIR}/R02/${sess}/nii/rRS_e1_cropped_nan_gm_sm.feat/design.fsf > ${MAINDIR}/${r}/${sess}/nii/rRS_e1_cropped_nan_gm_sm.fsf
feat ${MAINDIR}/${r}/${sess}/nii/rRS_e1_cropped_nan_gm_sm.fsf
done
done

echo SUB SESS CBF_NVOXELS THR_NVOXELS >> ${MAINDIR}/RS_CBF_extent.txt
for r in R02 R03 R05 R06 R07 R08 R09 R10
do
for sess in sess1 sess2
do
ttologp -logpout ${MAINDIR}/${r}/${sess}/nii/rRS_e1_cropped_nan_gm_sm.feat/stats/logp1 ${MAINDIR}/${r}/${sess}/nii/rRS_e1_cropped_nan_gm_sm.feat/stats/varcope1 ${MAINDIR}/${r}/${sess}/nii/rRS_e1_cropped_nan_gm_sm.feat/stats/cope1 `cat ${MAINDIR}/${r}/${sess}/nii/rRS_e1_cropped_nan_gm_sm.feat/stats/dof`
fslmaths ${MAINDIR}/${r}/${sess}/nii/rRS_e1_cropped_nan_gm_sm.feat/stats/logp1 -exp ${MAINDIR}/${r}/${sess}/nii/rRS_e1_cropped_nan_gm_sm.feat/stats/p1
outstr=`fdr -i ${MAINDIR}/${r}/${sess}/nii/rRS_e1_cropped_nan_gm_sm.feat/stats/p1 -q 0.05`
for word in $outstr
do
thr=$word
done
one_minus_thr=`awk -v thr=$thr 'BEGIN {print 1 - thr}'`
fslmaths ${MAINDIR}/${r}/${sess}/nii/rRS_e1_cropped_nan_gm_sm.feat/stats/p1 -mul -1 -add 1 -thr 0.9511 -mas ${MAINDIR}/${r}/${sess}/nii/rRS_e1_cropped_nan_gm_sm.feat/stats/p1 ${MAINDIR}/${r}/${sess}/nii/rRS_e1_cropped_nan_gm_sm.feat/stats/thresh_1_minus_p1
fslmaths ${MAINDIR}/${r}/${sess}/nii/meanCBF_2_rRS_e1_cropped_nan_gm_sm -mas ${MAINDIR}/${r}/${sess}/nii/rRS_e1_cropped_nan_gm_sm.feat/stats/thresh_1_minus_p1 ${MAINDIR}/${r}/${sess}/nii/meanCBF_2_rRS_e1_cropped_nan_gm_sm_thr
cbf_nvox=`fslstats ${MAINDIR}/${r}/${sess}/nii/meanCBF_2_rRS_e1_cropped_nan_gm_sm -V`
thr_nvox=`fslstats ${MAINDIR}/${r}/${sess}/nii/meanCBF_2_rRS_e1_cropped_nan_gm_sm_thr -V`
echo $r $sess ${cbf_nvox} ${thr_nvox} >> ${MAINDIR}/RS_CBF_extent.txt
done
done

