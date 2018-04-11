#!/bin/bash

for sub in R02 R03 R05 R06 R07 R08 R09 R10
do
for sess in sess1 sess2
do
for BH in BH1 BH2
do
fslmaths /Users/erin/Desktop/Projects/Repeatability/working/${sub}/${sess}/nii/sr${BH}_e1_cropped_sub -bptf -1 2 /Users/erin/Desktop/Projects/Repeatability/working/${sub}/${sess}/nii/sr${BH}_e1_cropped_sub_bptf
done
done
done 


for sub in R02 R03 R05 R06 R07 R08 R09 R10
do

for run in bh2_01 bh2_02 bh2_03 bh2_04 bh2_05 bh2_06 bh2_07 bh2_08 bh2_09 bh2_10 bh2_11 bh2_12 bh2_13 bh2_14 bh2_15 bh2_16 bh2_17 bh2_18 bh2_19 bh2_20 bh2_21 bh2_22 bh2_23 bh2_24 bh2_25 bh2_26 bh2_27
do
sed 's:cropped_sub:cropped_sub_bptf:g' /Users/erin/Desktop/Projects/Repeatability/working/${sub}/sess1/nii/srBH2_e1_cropped_sub_${run}.feat/design.fsf > /Users/erin/Desktop/Projects/Repeatability/working/${sub}/sess1/nii/srBH2_e1_cropped_sub_bptf_${run}.fsf
feat /Users/erin/Desktop/Projects/Repeatability/working/${sub}/sess1/nii/srBH2_e1_cropped_sub_bptf_${run}.fsf &
done
wait

for run in bh2_01 bh2_02 bh2_03 bh2_04 bh2_05 bh2_06 bh2_07 bh2_08 bh2_09 bh2_10 bh2_11 bh2_12 bh2_13 bh2_14 bh2_15 bh2_16 bh2_17 bh2_18 bh2_19 bh2_20 bh2_21 bh2_22 bh2_23 bh2_24 bh2_25 bh2_26 bh2_27
do
sed 's:cropped_sub:cropped_sub_bptf:g' /Users/erin/Desktop/Projects/Repeatability/working/${sub}/sess2/nii/srBH2_e1_cropped_sub_${run}.feat/design.fsf > /Users/erin/Desktop/Projects/Repeatability/working/${sub}/sess2/nii/srBH2_e1_cropped_sub_bptf_${run}.fsf
feat /Users/erin/Desktop/Projects/Repeatability/working/${sub}/sess2/nii/srBH2_e1_cropped_sub_bptf_${run}.fsf &
done
wait

for run in bh1_01 bh1_02 bh1_03 bh1_04 bh1_05 bh1_06 bh1_07 bh1_08 bh1_09 bh1_10 bh1_11 bh1_12 bh1_13 bh1_14 bh1_15 bh1_16 bh1_17 bh1_18 bh1_19 bh1_20 bh1_21 bh1_22 bh1_23 bh1_24 bh1_25 bh1_26 bh1_27
do
sed 's:cropped_sub:cropped_sub_bptf:g' /Users/erin/Desktop/Projects/Repeatability/working/${sub}/sess1/nii/srBH1_e1_cropped_sub_${run}.feat/design.fsf > /Users/erin/Desktop/Projects/Repeatability/working/${sub}/sess1/nii/srBH1_e1_cropped_sub_bptf_${run}.fsf
feat /Users/erin/Desktop/Projects/Repeatability/working/${sub}/sess1/nii/srBH1_e1_cropped_sub_bptf_${run}.fsf &
done
wait

for run in bh1_01 bh1_02 bh1_03 bh1_04 bh1_05 bh1_06 bh1_07 bh1_08 bh1_09 bh1_10 bh1_11 bh1_12 bh1_13 bh1_14 bh1_15 bh1_16 bh1_17 bh1_18 bh1_19 bh1_20 bh1_21 bh1_22 bh1_23 bh1_24 bh1_25 bh1_26 bh1_27
do
sed 's:cropped_sub:cropped_sub_bptf:g' /Users/erin/Desktop/Projects/Repeatability/working/${sub}/sess2/nii/srBH1_e1_cropped_sub_${run}.feat/design.fsf > /Users/erin/Desktop/Projects/Repeatability/working/${sub}/sess2/nii/srBH1_e1_cropped_sub_bptf_${run}.fsf
feat /Users/erin/Desktop/Projects/Repeatability/working/${sub}/sess2/nii/srBH1_e1_cropped_sub_bptf_${run}.fsf &
done 
wait

for sess in sess1 sess2
do
for run in BH1 BH2
do
sed 's:cropped_sub:cropped_sub_bptf:g' /Users/erin/Desktop/Projects/Repeatability/working/${sub}/${sess}/nii/sr${run}_e1_cropped_sub_block_gamma15_30.feat/design.fsf > /Users/erin/Desktop/Projects/Repeatability/working/${sub}/${sess}/nii/sr${run}_e1_cropped_sub_block_gamma15_30.fsf
feat /Users/erin/Desktop/Projects/Repeatability/working/${sub}/${sess}/nii/sr${run}_e1_cropped_sub_block_gamma15_30.fsf &
done
done


done