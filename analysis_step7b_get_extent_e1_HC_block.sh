#!/bin/bash
MAINDIR=/Users/erin/Desktop/Projects/Repeatability/working
analysis=e1_cropped_sub_bptf
for sub in R02 R03 R05 R06 R07 R08 R09 R10
do
for sess in sess1 sess2
do
gmvoltmp=(`fslstats ${MAINDIR}/${sub}/${sess}/nii/c1T1.8_to_HC1 -V`)
gmvol=`echo ${gmvoltmp[1]}`
for run in HC1 HC2
do
echo -n $sub $sess $run " "
actvoltmp=(`fslstats ${MAINDIR}/${sub}/${sess}/nii/sr${run}_${analysis}_block_gamma15_30.feat/thresh_zstat1 -k ${MAINDIR}/${sub}/${sess}/nii/c1T1.8_to_HC1 -V`)
actvol=`echo ${actvoltmp[1]}`
awk -v actvol=$actvol -v gmvol=$gmvol 'BEGIN {print actvol/gmvol}'
done
done
done
