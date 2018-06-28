#!/bin/bash
MAINDIR=/Users/erin/Desktop/Projects/Repeatability/working

for type in mip delay
do
for e in e1 e2
do
for run in HC1 HC2 BH1 BH2
do
for sess in sess1 sess2
do
for sub in R02 R03 R05 R06 R07 R08 R09 R10
do
  regdir=${MAINDIR}/${sub}/${sess}/nii/r${run}_e2_cropped_nan_reg.feat/reg
  applywarp -i ${MAINDIR}/${sub}/${sess}/nii/r${run}_${e}_cope1_psc_movie_${type} -w ${regdir}/example_func2standard_warp -r ${regdir}/standard --interp=nn -o ${MAINDIR}/${sub}/${sess}/nii/r${run}_${e}_cope1_psc_movie_${type}_to_standard
  fslchfiletype NIFTI ${MAINDIR}/${sub}/${sess}/nii/r${run}_${e}_cope1_psc_movie_${type}_to_standard
  echo ${MAINDIR}/${sub}/${sess}/nii/r${run}_${e}_cope1_psc_movie_${type}_to_standard.nii >> ${MAINDIR}/ICC_input/bs_${run}_${e}_${type}.txt
done #subs
done #sess
done #runs

for sess in sess1 sess2
do
for run in HC1 HC2
do
for sub in R02 R03 R05 R06 R07 R08 R09 R10
do
  echo ${MAINDIR}/${sub}/${sess}/nii/r${run}_${e}_cope1_psc_movie_${type}_to_standard.nii >> ${MAINDIR}/ICC_input/ws_${sess}_HC_${e}_${type}.txt
done #sub
done #run

for run in BH1 BH2
do
for sub in R02 R03 R05 R06 R07 R08 R09 R10
do
  echo ${MAINDIR}/${sub}/${sess}/nii/r${run}_${e}_cope1_psc_movie_${type}_to_standard.nii >> ${MAINDIR}/ICC_input/ws_${sess}_BH_${e}_${type}.txt
done #sub
done #run
done #sess

done #es
done #types

