#!/bin/bash

#for sub in R02 R03 R05 R06 R07 R08 R09 R10
#do
#for sess in sess1 sess2
#do
#for HC in HC1 HC2
#do
#fslmaths /Users/erin/Desktop/Projects/Repeatability/working/${sub}/${sess}/nii/sr${HC}_e1_cropped_sub -bptf -1 2 /Users/erin/Desktop/Projects/Repeatability/working/${sub}/${sess}/nii/sr${HC}_e1_cropped_sub_bptf
#done
#done
#done 


for sub in R02 R03 R05 R06 R07 R08 R09 R10
do

for run in hc2_01 hc2_02 hc2_03 hc2_04 hc2_05 hc2_06 hc2_07 hc2_08 hc2_09 hc2_10 hc2_11 hc2_12 hc2_13 hc2_14 hc2_15 hc2_16 hc2_17 hc2_18 hc2_19 hc2_20 hc2_21 hc2_22 hc2_23 hc2_24 hc2_25 hc2_26 hc2_27
do
sed 's:cropped_sub:cropped_sub_bptf:g' /Users/erin/Desktop/Projects/Repeatability/working/${sub}/sess1/nii/srHC2_e1_cropped_sub_${run}.feat/design.fsf > /Users/erin/Desktop/Projects/Repeatability/working/${sub}/sess1/nii/srHC2_e1_cropped_sub_bptf_${run}.fsf
feat /Users/erin/Desktop/Projects/Repeatability/working/${sub}/sess1/nii/srHC2_e1_cropped_sub_bptf_${run}.fsf &
done
wait

for run in hc2_01 hc2_02 hc2_03 hc2_04 hc2_05 hc2_06 hc2_07 hc2_08 hc2_09 hc2_10 hc2_11 hc2_12 hc2_13 hc2_14 hc2_15 hc2_16 hc2_17 hc2_18 hc2_19 hc2_20 hc2_21 hc2_22 hc2_23 hc2_24 hc2_25 hc2_26 hc2_27
do
sed 's:cropped_sub:cropped_sub_bptf:g' /Users/erin/Desktop/Projects/Repeatability/working/${sub}/sess2/nii/srHC2_e1_cropped_sub_${run}.feat/design.fsf > /Users/erin/Desktop/Projects/Repeatability/working/${sub}/sess2/nii/srHC2_e1_cropped_sub_bptf_${run}.fsf
feat /Users/erin/Desktop/Projects/Repeatability/working/${sub}/sess2/nii/srHC2_e1_cropped_sub_bptf_${run}.fsf &
done
wait

for run in hc1_01 hc1_02 hc1_03 hc1_04 hc1_05 hc1_06 hc1_07 hc1_08 hc1_09 hc1_10 hc1_11 hc1_12 hc1_13 hc1_14 hc1_15 hc1_16 hc1_17 hc1_18 hc1_19 hc1_20 hc1_21 hc1_22 hc1_23 hc1_24 hc1_25 hc1_26 hc1_27
do
sed 's:cropped_sub:cropped_sub_bptf:g' /Users/erin/Desktop/Projects/Repeatability/working/${sub}/sess1/nii/srHC1_e1_cropped_sub_${run}.feat/design.fsf > /Users/erin/Desktop/Projects/Repeatability/working/${sub}/sess1/nii/srHC1_e1_cropped_sub_bptf_${run}.fsf
feat /Users/erin/Desktop/Projects/Repeatability/working/${sub}/sess1/nii/srHC1_e1_cropped_sub_bptf_${run}.fsf &
done
wait

for run in hc1_01 hc1_02 hc1_03 hc1_04 hc1_05 hc1_06 hc1_07 hc1_08 hc1_09 hc1_10 hc1_11 hc1_12 hc1_13 hc1_14 hc1_15 hc1_16 hc1_17 hc1_18 hc1_19 hc1_20 hc1_21 hc1_22 hc1_23 hc1_24 hc1_25 hc1_26 hc1_27
do
sed 's:cropped_sub:cropped_sub_bptf:g' /Users/erin/Desktop/Projects/Repeatability/working/${sub}/sess2/nii/srHC1_e1_cropped_sub_${run}.feat/design.fsf > /Users/erin/Desktop/Projects/Repeatability/working/${sub}/sess2/nii/srHC1_e1_cropped_sub_bptf_${run}.fsf
feat /Users/erin/Desktop/Projects/Repeatability/working/${sub}/sess2/nii/srHC1_e1_cropped_sub_bptf_${run}.fsf &
done 
wait

for sess in sess1 sess2
do
for run in HC1 HC2
do
sed 's:cropped_sub:cropped_sub_bptf:g' /Users/erin/Desktop/Projects/Repeatability/working/${sub}/${sess}/nii/sr${run}_e1_cropped_sub_block_gamma15_30.feat/design.fsf > /Users/erin/Desktop/Projects/Repeatability/working/${sub}/${sess}/nii/sr${run}_e1_cropped_sub_block_gamma15_30.fsf
feat /Users/erin/Desktop/Projects/Repeatability/working/${sub}/${sess}/nii/sr${run}_e1_cropped_sub_block_gamma15_30.fsf &
done
done


done