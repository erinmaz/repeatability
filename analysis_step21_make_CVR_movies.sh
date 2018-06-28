#!/bin/bash

MAINDIR=/Users/erin/Desktop/Projects/Repeatability/working

for s in sess1 sess2
do
for run in HC1 HC2
do
for r in R02 R03 R05 R06 R07 R08 R09 R10
do
  fslmerge -t ${MAINDIR}/${r}/${s}/nii/r${run}_e2_cope1_psc_movie `ls -d ${MAINDIR}/${r}/${s}/nii/r${run}_e2*hc*.feat/stats/cope1_psc.nii.gz`
  fslmerge -t ${MAINDIR}/${r}/${s}/nii/r${run}_e1_cope1_psc_movie `ls -d ${MAINDIR}/${r}/${s}/nii/r${run}_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_hc*.feat/stats_rawfile_nothr/cope1_psc.nii.gz`
  
  for f in `ls -d ${MAINDIR}/${r}/${s}/nii/r${run}_e2*hc*.feat`
  do
    fslmaths ${f}/stats/cope1_psc -mas ${f}/stats/thresh_1_minus_p1 ${f}/stats/cope1_psc_statsthresh
  done
  for f in `ls -d ${MAINDIR}/${r}/${s}/nii/r${run}_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_hc*.feat`
  do
    fslmaths ${f}/stats_rawfile_nothr/cope1_psc -mas ${f}/stats_rawfile_nothr/thresh_1_minus_p1 ${f}/stats_rawfile_nothr/cope1_psc_statsthresh
  done
  fslmerge -t ${MAINDIR}/${r}/${s}/nii/r${run}_e2_cope1_psc_statsthresh_movie `ls -d ${MAINDIR}/${r}/${s}/nii/r${run}_e2*hc*.feat/stats/cope1_psc_statsthresh.nii.gz`
  fslmerge -t ${MAINDIR}/${r}/${s}/nii/r${run}_e1_cope1_psc_statsthresh_movie `ls -d ${MAINDIR}/${r}/${s}/nii/r${run}_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_hc*.feat/stats_rawfile_nothr/cope1_psc_statsthresh.nii.gz`
  
done
done
done    

for run in BH1 BH2
do
for r in R02 R03 R05 R06 R07 R08 R09 R10
do
for s in sess1 sess2
do
  fslmerge -t ${MAINDIR}/${r}/${s}/nii/r${run}_e2_cope1_psc_movie `ls -d ${MAINDIR}/${r}/${s}/nii/r${run}_e2*bh*.feat/stats/cope1_psc.nii.gz`
  fslmerge -t ${MAINDIR}/${r}/${s}/nii/r${run}_e1_cope1_psc_movie `ls -d ${MAINDIR}/${r}/${s}/nii/r${run}_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_bh*.feat/stats_rawfile_nothr/cope1_psc.nii.gz`
  
  for f in `ls -d ${MAINDIR}/${r}/${s}/nii/r${run}_e2*bh*.feat`
  do
    fslmaths ${f}/stats/cope1_psc -mas ${f}/stats/thresh_1_minus_p1 ${f}/stats/cope1_psc_statsthresh
  done
  for f in `ls -d ${MAINDIR}/${r}/${s}/nii/r${run}_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_bh*.feat`
  do
    fslmaths ${f}/stats_rawfile_nothr/cope1_psc -mas ${f}/stats_rawfile_nothr/thresh_1_minus_p1 ${f}/stats_rawfile_nothr/cope1_psc_statsthresh
  done
  fslmerge -t ${MAINDIR}/${r}/${s}/nii/r${run}_e2_cope1_psc_statsthresh_movie `ls -d ${MAINDIR}/${r}/${s}/nii/r${run}_e2*bh*.feat/stats/cope1_psc_statsthresh.nii.gz`
  fslmerge -t ${MAINDIR}/${r}/${s}/nii/r${run}_e1_cope1_psc_statsthresh_movie `ls -d ${MAINDIR}/${r}/${s}/nii/r${run}_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_bh*.feat/stats_rawfile_nothr/cope1_psc_statsthresh.nii.gz`

done
done
done

