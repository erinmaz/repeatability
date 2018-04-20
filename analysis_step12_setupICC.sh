#!/bin/bash
MAINDIR=/Users/erin/Desktop/Projects/Repeatability/working
mkdir ${MAINDIR}/ICC_input
for type in mip delay
do
for hrf in gamma3_6 gamma7.5_15 gamma15_30
do
for e in e1 e2
do
for run in HC1 HC2 BH1 BH2
do

reg=r${run}_e2_cropped_nan_reg.feat/reg/example_func2standard_warp
ref=r${run}_e2_cropped_nan_reg.feat/reg/standard

for sess in sess1 sess2
do
for sub in R02 R03 R05 R06 R07 R08 R09 R10
do
#applywarp -i ${MAINDIR}/${sub}/${sess}/nii/${run}_${hrf}_CVR_sig_${e}_movie_cropped_${type} -w ${MAINDIR}/${sub}/${sess}/nii/${reg} -r ${MAINDIR}/${sub}/${sess}/nii/${ref} -o ${MAINDIR}/${sub}/${sess}/nii/${run}_${hrf}_CVR_sig_${e}_movie_cropped_${type}_to_standard --interp=nn
#fslchfiletype NIFTI ${MAINDIR}/${sub}/${sess}/nii/${run}_${hrf}_CVR_sig_${e}_movie_cropped_${type}_to_standard 
echo ${MAINDIR}/${sub}/${sess}/nii/${run}_${hrf}_CVR_sig_${e}_movie_cropped_${type}_to_standard.nii >> ${MAINDIR}/ICC_input/bs_${run}_${e}_${hrf}_${type}.txt
done #subs
done #sess

done #runs

for sess in sess1 sess2
do
for run in HC1 HC2
do
for sub in R02 R03 R05 R06 R07 R08 R09 R10
do
echo ${MAINDIR}/${sub}/${sess}/nii/${run}_${hrf}_CVR_sig_${e}_movie_cropped_${type}_to_standard.nii >> ${MAINDIR}/ICC_input/ws_${sess}_HC_${e}_${hrf}_${type}.txt
done #sub
done #run

for run in BH1 BH2
do
for sub in R02 R03 R05 R06 R07 R08 R09 R10
do
echo ${MAINDIR}/${sub}/${sess}/nii/${run}_${hrf}_CVR_sig_${e}_movie_cropped_${type}_to_standard.nii >> ${MAINDIR}/ICC_input/ws_${sess}_BH_${e}_${hrf}_${type}.txt
done #sub
done #run
done #sess

done #es
done #hrfs
done #types