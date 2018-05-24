#!/bin/bash
for hrf in gamma3_6 gamma7.5_15 gamma15_30
do
for sub in R02 R03 R05 R06 R07 R08 R09 R10
do
for sess in sess1 sess2
do
for run in HC1 HC2 BH1 BH2
do
for f in `ls -d /Users/erin/Desktop/Projects/Repeatability/working/${sub}/${sess}/nii/sr${run}_e1_cropped_sub_bptf_*_${hrf}.feat`
do
fslmaths ${f}/stats/cope1_psc_sig -uthr 0.25 ${f}/stats/cope1_psc_sig_less_than_0.25
done
fslmerge -t /Users/erin/Desktop/Projects/Repeatability/working/${sub}/${sess}/nii/${run}_${hrf}_CVR_sig_e1_less_than_0.25_movie `ls -d /Users/erin/Desktop/Projects/Repeatability/working/${sub}/${sess}/nii/sr${run}_e1_cropped_sub_bptf_*_${hrf}.feat/stats/cope1_psc_sig_less_than_0.25.nii.gz` 
fslroi /Users/erin/Desktop/Projects/Repeatability/working/${sub}/${sess}/nii/${run}_${hrf}_CVR_sig_e1_less_than_0.25_movie  /Users/erin/Desktop/Projects/Repeatability/working/${sub}/${sess}/nii/${run}_${hrf}_CVR_sig_e1_less_than_0.25_movie_cropped 10 16
fslchfiletype NIFTI /Users/erin/Desktop/Projects/Repeatability/working/${sub}/${sess}/nii/${run}_${hrf}_CVR_sig_e1_less_than_0.25_movie_cropped 
done
done
done
done
#matlab stuff
#fslcpgeom