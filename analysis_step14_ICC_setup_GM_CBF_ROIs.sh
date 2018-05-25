#!/bin/bash
ROIDIR=/Users/erin/Desktop/Projects/Repeatability/ROIs/ASPECTS_FSL
MAINDIR=/Users/erin/Desktop/Projects/Repeatability/working
IMAGE=meanCBF_2_rRS_e1_cropped_nan_gm_sm_thr

for r in R02 R03 R05 R06 R07 R08 R09 R10
do
for roi in `ls -d $ROIDIR/*gm.img`
do
meanCBF_s1=`fslstats ${MAINDIR}/${r}/sess1/nii/${IMAGE}_to_standard -k $roi -M`
meanCBF_s2=`fslstats ${MAINDIR}/${r}/sess2/nii/${IMAGE}_to_standard -k $roi -M`
nvox_s1=`fslstats ${MAINDIR}/${r}/sess1/nii/${IMAGE}_to_standard -k $roi -V`
nvox_s2=`fslstats ${MAINDIR}/${r}/sess2/nii/${IMAGE}_to_standard -k $roi -V`
echo ${meanCBF_s1} ${meanCBF_s2} >> ${MAINDIR}/ICC_input/ROIs/RS_GM_CBF_ROIs_${r}.txt
echo ${nvox_s1} ${nvox_s2} >> ${MAINDIR}/RS_GM_CBF_ROIs_${r}_nvox.txt
done
done

for roi in `ls -d $ROIDIR/*gm.img`
do
echo $roi >> ${MAINDIR}/ROIs.txt
done

fsleyes ${FSLDIR}/data/standard/MNI152_T1_2mm `ls -d $ROIDIR/*gm.img`