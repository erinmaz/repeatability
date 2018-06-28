#!/bin/bash

MAINDIR=/Users/erin/Desktop/Projects/Repeatability/working

for run in HC1 HC2
do
for r in R02 R03 R05 R06 R07 R08 R09 R10
do
for s in sess1 sess2
do
max_extent=0
for f in `ls -d ${MAINDIR}/${r}/${s}/nii/r${run}_e2*hc*.feat`
do
  extent=`fslstats ${f}/stats/thresh_1_minus_p1 -V`
  cur_extent=`echo $extent | cut -d' ' -f 1`
  if (( ${cur_extent} > ${max_extent} )); then
    max_extent=`echo ${cur_extent}`
    max_analysis=$f
  fi
done
echo $r $s ${max_analysis} ${max_extent}
done
done
done    

for run in BH1 BH2
do
for r in R02 R03 R05 R06 R07 R08 R09 R10
do
for s in sess1 sess2
do
max_extent=0
for f in `ls -d ${MAINDIR}/${r}/${s}/nii/r${run}_e2*bh*.feat`
do
  extent=`fslstats ${f}/stats/thresh_1_minus_p1 -V`
  cur_extent=`echo $extent | cut -d' ' -f 1`
  if (( ${cur_extent} > ${max_extent} )); then
    max_extent=`echo ${cur_extent}`
    max_analysis=$f
  fi
done
echo $r $s ${max_analysis} ${max_extent}
done
done
done

for run in HC1 HC2
do
for r in R02 R03 R05 R06 R07 R08 R09 R10
do
for s in sess1 sess2
do
max_extent=0
for f in `ls -d ${MAINDIR}/${r}/${s}/nii/r${run}_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_hc*.feat`
do
  extent=`fslstats ${f}/stats_rawfile_nothr/thresh_1_minus_p1 -V`
  cur_extent=`echo $extent | cut -d' ' -f 1`
  if (( ${cur_extent} > ${max_extent} )); then
    max_extent=`echo ${cur_extent}`
    max_analysis=$f
  fi
done
echo $r $s ${max_analysis} ${max_extent}
done
done
done

for run in BH1 BH2
do
for r in R02 R03 R05 R06 R07 R08 R09 R10
do
for s in sess1 sess2
do
max_extent=0
for f in `ls -d ${MAINDIR}/${r}/${s}/nii/r${run}_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_bh*.feat`
do
  extent=`fslstats ${f}/stats_rawfile_nothr/thresh_1_minus_p1 -V`
  cur_extent=`echo $extent | cut -d' ' -f 1`
  if (( ${cur_extent} > ${max_extent} )); then
    max_extent=`echo ${cur_extent}`
    max_analysis=$f
  fi
done
echo $r $s ${max_analysis} ${max_extent}
done
done
done
