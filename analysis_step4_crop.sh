#!/bin/bash

MAINDIR=/Users/erin/Desktop/Projects/Repeatability/working


for r in R02 R03 R05 R06 R07 R08 R09 R10
do 
for s in sess1 sess2
do 
#crop HC and RS runs so they are the same length as the shortest BH runs
for run in HC1_e1 HC1_e2 HC2_e1 HC2_e2 RS_e1 RS_e2
do
fslroi ${MAINDIR}/${r}/${s}/nii/${run} ${MAINDIR}/${r}/${s}/nii/${run}_cropped 14 76
done

#make sure all the BH runs are 76 volumes
for run in BH1_e1 BH1_e2 BH2_e1 BH2_e2
do
fslroi ${MAINDIR}/${r}/${s}/nii/${run} ${MAINDIR}/${r}/${s}/nii/${run}_cropped 0 76
done

#crop ET data to match
for run in hc1_1 hc2_1
do
#get rid of spaces
sed 's/ //g' ${MAINDIR}/${r}/${s}/respiract/${run}.txt > ${MAINDIR}/${r}/${s}/respiract/${run}_sed.txt
#extract 76 values that correspond to fslroi command
cut -f 15-90  ${MAINDIR}/${r}/${s}/respiract/${run}_sed.txt >  ${MAINDIR}/${r}/${s}/respiract/${run}_sed_cropped.txt 
#scale such that min=0
min=`awk '{m=$1;for(i=1;i<=NF;i++)if($i<m)m=$i;print m}' ${MAINDIR}/${r}/${s}/respiract/${run}_sed_cropped.txt`
awk -v min=$min '{for(i=1;i<=NF;i++)print $i-min}' ${MAINDIR}/${r}/${s}/respiract/${run}_sed_cropped.txt > ${MAINDIR}/${r}/${s}/respiract/${run}_sed_cropped_0.txt
done

for run in bh1_1 bh2_1
do
sed 's/ //g' ${MAINDIR}/${r}/${s}/respiract/${run}.txt > ${MAINDIR}/${r}/${s}/respiract/${run}_sed.txt
#extract first 76 values
cut -f 1-76  ${MAINDIR}/${r}/${s}/respiract/${run}_sed.txt >  ${MAINDIR}/${r}/${s}/respiract/${run}_sed_cropped.txt 
#scale such that min=0
min=`awk '{m=$1;for(i=1;i<=NF;i++)if($i<m)m=$i;print m}' ${MAINDIR}/${r}/${s}/respiract/${run}_sed_cropped.txt`
awk -v min=$min '{for(i=1;i<=NF;i++)print $i-min}' ${MAINDIR}/${r}/${s}/respiract/${run}_sed_cropped.txt > ${MAINDIR}/${r}/${s}/respiract/${run}_sed_cropped_0.txt
done

done
done

for file in `find $MAINDIR -name "*e*_cropped.nii.gz"`
do 
fslchfiletype NIFTI $file
done




