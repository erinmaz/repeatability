#!/bin/bash

MAINDIR=/Users/erin/Desktop/Projects/Repeatability/working

for r in R02 R03 R05 R06 R07 R08 R09 R10
do
for sess in sess1 sess2
do
for run in BH1 BH2 HC1 HC2
do
for delay in
/usr/local/fsl/bin/film_gls --in=${MAINDIR}/${r}/${sess}/nii/r${run}_e1_cropped_nan_gm_sm_sub_bptf
--rn=${MAINDIR}/${r}/${sess}/nii/r${run}_e1_cropped_nan_gm_sm_sub_bptf.stats --thr=0 --pd=/Users/erin/Desktop/Projects/Repeatability/code_2018/

#I have all the e2 feats run. do i need to re run them?
done
done
done
done

/usr/local/fsl/bin/film_gls --in=filtered_func_data --rn=stats_cmdline_film_gls_thr0 --pd=design.mat --thr=0 --sa --ms=5 --con=design.con


for e1 subtracted data:
 film_gls --in=../rBH1_e1_cropped_nan_gm_sm_sub_bptf --rn=stats_rawfile_nothr --pd=design.mat --con=design.con --noest 




