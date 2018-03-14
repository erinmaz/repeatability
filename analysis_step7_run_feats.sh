#!/bin/bash
MAINDIR=/Users/erin/Desktop/Projects/Repeatability/working
for r in R02 R03 R05 R06 R07 R08 R09 R10
do 
for s in sess1 sess2
do 
for run in HC1_e2 HC2_e2 BH1_e2 BH2_e2
do
runname=`basename $run _e2`
run_etco2=`echo $runname | awk '{print tolower($0)}'`
run_feat.sh ${MAINDIR}/${r}/${s}/nii/sr${run}_cropped ${MAINDIR}/${r}/${s}/respiract/${run_etco2}_1_sed_cropped_0.txt ${MAINDIR}/${r}/${s}/nii/mean${runname}_e1_cropped_brain_mask /Users/erin/Desktop/Projects/Repeatability/code_2018/stats_e2.fsf
done
done
done



