#!/bin/bash
MAINDIR=/Users/erin/Desktop/Projects/Repeatability/working
for sub in R02 R03 R05 R06 R07 R08 R09 R10
do
for sess in sess1 sess2
do
#for run in BH1 BH2 HC1 HC2 RS
for run in RS
do

#need to exclude few rare voxels that end up in both masks (a couple in the cerebellum for R02 sess1 RS)
fslmaths ${MAINDIR}/${sub}/${sess}/nii/rRS_e1_cropped -nan -mas c1T1.8_to_RS.nii.gz -kernel gauss 5 -fmedian ${MAINDIR}/${sub}/${sess}/nii/rRS_e1_cropped_gm_gauss5_fmedian
fslmaths ${MAINDIR}/${sub}/${sess}/nii/rRS_e1_cropped -nan -mas c2T1.8_to_RS.nii.gz -kernel gauss 5 -fmedian ${MAINDIR}/${sub}/${sess}/nii/rRS_e1_cropped_wm_gauss5_fmedian

fslmaths ${MAINDIR}/${sub}/${sess}/nii/rRS_e1_cropped_gm_gauss5_fmedian -add ${MAINDIR}/${sub}/${sess}/nii/rRS_e1_cropped_wm_gauss5_fmedian ${MAINDIR}/${sub}/${sess}/nii/rRS_e1_cropped_gm_wm_gauss5_fmedian
done
done
done

