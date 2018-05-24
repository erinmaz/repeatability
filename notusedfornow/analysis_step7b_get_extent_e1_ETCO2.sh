#!/bin/bash
MAINDIR=/Users/erin/Desktop/Projects/Repeatability/working
analysis=e1_cropped_sub_bptf
for sub in R02 R03 R05 R06 R07 R08 R09 R10
do
for sess in sess1 sess2
do
gmvoltmp=(`fslstats ${MAINDIR}/${sub}/${sess}/nii/c1T1.8_to_BH1 -V`)
gmvol=`echo ${gmvoltmp[1]}`
for run in bh1_01 bh1_02 bh1_03 bh1_04 bh1_05 bh1_06 bh1_07 bh1_08 bh1_09 bh1_10 bh1_11 bh1_12 bh1_13 bh1_14 bh1_15 bh1_16 bh1_17 bh1_18 bh1_19 bh1_20 bh1_21 bh1_22 bh1_23 bh1_24 bh1_25 bh1_26 bh1_27
do
echo -n $sub $sess $run " "
actvoltmp=(`fslstats ${MAINDIR}/${sub}/${sess}/nii/srBH1_${analysis}_${run}.feat/thresh_zstat1 -k ${MAINDIR}/${sub}/${sess}/nii/c1T1.8_to_BH1 -V`)
actvol=`echo ${actvoltmp[1]}`
awk -v actvol=$actvol -v gmvol=$gmvol 'BEGIN {print actvol/gmvol}'
done
done
done

#do calc as a percent for other runs below:
for sub in R02 R03 R05 R06 R07 R08 R09 R10
do
for sess in sess1 sess2
do
gmvoltmp=(`fslstats ${MAINDIR}/${sub}/${sess}/nii/c1T1.8_to_BH2 -V`)
gmvol=`echo ${gmvoltmp[1]}`
for run in bh2_01 bh2_02 bh2_03 bh2_04 bh2_05 bh2_06 bh2_07 bh2_08 bh2_09 bh2_10 bh2_11 bh2_12 bh2_13 bh2_14 bh2_15 bh2_16 bh2_17 bh2_18 bh2_19 bh2_20 bh2_21 bh2_22 bh2_23 bh2_24 bh2_25 bh2_26 bh2_27
do
echo -n $sub $sess $run " "
actvoltmp=(`fslstats ${MAINDIR}/${sub}/${sess}/nii/srBH2_${analysis}_${run}.feat/thresh_zstat1 -k ${MAINDIR}/${sub}/${sess}/nii/c1T1.8_to_BH2 -V`)
actvol=`echo ${actvoltmp[1]}`
awk -v actvol=$actvol -v gmvol=$gmvol 'BEGIN {print actvol/gmvol}'
done
done
done

for sub in R02 R03 R05 R06 R07 R08 R09 R10
do
for sess in sess1 sess2
do
gmvoltmp=(`fslstats ${MAINDIR}/${sub}/${sess}/nii/c1T1.8_to_HC1 -V`)
gmvol=`echo ${gmvoltmp[1]}`
for run in hc1_01 hc1_02 hc1_03 hc1_04 hc1_05 hc1_06 hc1_07 hc1_08 hc1_09 hc1_10 hc1_11 hc1_12 hc1_13 hc1_14 hc1_15 hc1_16 hc1_17 hc1_18 hc1_19 hc1_20 hc1_21 hc1_22 hc1_23 hc1_24 hc1_25 hc1_26 hc1_27
do
echo -n $sub $sess $run " "
actvoltmp=(`fslstats ${MAINDIR}/${sub}/${sess}/nii/srHC1_${analysis}_${run}.feat/thresh_zstat1 -k ${MAINDIR}/${sub}/${sess}/nii/c1T1.8_to_HC1 -V`)
actvol=`echo ${actvoltmp[1]}`
awk -v actvol=$actvol -v gmvol=$gmvol 'BEGIN {print actvol/gmvol}'
done
done
done

for sub in R02 R03 R05 R06 R07 R08 R09 R10
do
for sess in sess1 sess2
do
gmvoltmp=(`fslstats ${MAINDIR}/${sub}/${sess}/nii/c1T1.8_to_HC2 -V`)
gmvol=`echo ${gmvoltmp[1]}`
for run in hc2_01 hc2_02 hc2_03 hc2_04 hc2_05 hc2_06 hc2_07 hc2_08 hc2_09 hc2_10 hc2_11 hc2_12 hc2_13 hc2_14 hc2_15 hc2_16 hc2_17 hc2_18 hc2_19 hc2_20 hc2_21 hc2_22 hc2_23 hc2_24 hc2_25 hc2_26 hc2_27
do
echo -n $sub $sess $run " "
actvoltmp=(`fslstats ${MAINDIR}/${sub}/${sess}/nii/srHC2_${analysis}_${run}.feat/thresh_zstat1 -k ${MAINDIR}/${sub}/${sess}/nii/c1T1.8_to_HC2 -V`)
actvol=`echo ${actvoltmp[1]}`
awk -v actvol=$actvol -v gmvol=$gmvol 'BEGIN {print actvol/gmvol}'
done
done
done