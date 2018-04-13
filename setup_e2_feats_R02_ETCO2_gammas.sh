#!/bin/bash

for hrf in gamma3_6 gamma7.5_15 gamma15_30
do

for run in bh1_02 bh1_03 bh1_04 bh1_05 bh1_06 bh1_07 bh1_08 bh1_09 bh1_10 bh1_11 bh1_12 bh1_13 bh1_14 bh1_15 bh1_16 bh1_17 bh1_18 bh1_19 bh1_20 bh1_21 bh1_22 bh1_23 bh1_24 bh1_25 bh1_26 bh1_27
do
sed 's:bh1_01:'${run}':g' /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srBH1_e2_cropped_bh1_01_${hrf}.feat/design.fsf > /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srBH1_e2_cropped_${run}_${hrf}.fsf
feat /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srBH1_e2_cropped_${run}_${hrf}.fsf &
done

sed 's:BH1:BH2:g' /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srBH1_e2_cropped_bh1_01_${hrf}.feat/design.fsf > /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srBH2_e2_cropped_bh1_01_${hrf}.fsf

for run in bh2_01 bh2_02 bh2_03 bh2_04 bh2_05 bh2_06 bh2_07 bh2_08 bh2_09 bh2_10 bh2_11 bh2_12 bh2_13 bh2_14 bh2_15 bh2_16 bh2_17 bh2_18 bh2_19 bh2_20 bh2_21 bh2_22 bh2_23 bh2_24 bh2_25 bh2_26 bh2_27
do
sed 's:bh1_01:'${run}':g' /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srBH2_e2_cropped_bh1_01_${hrf}.fsf > /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srBH2_e2_cropped_${run}_${hrf}.fsf
feat /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srBH2_e2_cropped_${run}_${hrf}.fsf &
done
rm /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srBH2_e2_cropped_bh1_01_${hrf}.fsf

for run in bh2_01 bh2_02 bh2_03 bh2_04 bh2_05 bh2_06 bh2_07 bh2_08 bh2_09 bh2_10 bh2_11 bh2_12 bh2_13 bh2_14 bh2_15 bh2_16 bh2_17 bh2_18 bh2_19 bh2_20 bh2_21 bh2_22 bh2_23 bh2_24 bh2_25 bh2_26 bh2_27
do
sed 's:sess1:sess2:g' /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srBH2_e2_cropped_${run}_${hrf}.fsf > /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/srBH2_e2_cropped_${run}_${hrf}.fsf
feat /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/srBH2_e2_cropped_${run}_${hrf}.fsf &
done

for run in bh1_01 bh1_02 bh1_03 bh1_04 bh1_05 bh1_06 bh1_07 bh1_08 bh1_09 bh1_10 bh1_11 bh1_12 bh1_13 bh1_14 bh1_15 bh1_16 bh1_17 bh1_18 bh1_19 bh1_20 bh1_21 bh1_22 bh1_23 bh1_24 bh1_25 bh1_26 bh1_27
do
sed 's:sess1:sess2:g' /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srBH1_e2_cropped_${run}.feat/design.fsf > /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/srBH1_e2_cropped_${run}_${hrf}.fsf
feat /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/srBH1_e2_cropped_${run}_${hrf}.fsf &
done

sed 's:bh1_01:hc1_01:g' /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srBH1_e2_cropped_bh1_01_${hrf}.feat/design.fsf > /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srBH1_e2_cropped_hc1_01_${hrf}.fsf
sed 's:BH1:HC1:g' /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srBH1_e2_cropped_hc1_01_${hrf}.fsf > /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srHC1_e2_cropped_hc1_01_${hrf}.fsf
rm /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srBH1_e2_cropped_hc1_01_${hrf}.fsf
feat /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srHC1_e2_cropped_hc1_01_${hrf}.fsf

for run in hc1_02 hc1_03 hc1_04 hc1_05 hc1_06 hc1_07 hc1_08 hc1_09 hc1_10 hc1_11 hc1_12 hc1_13 hc1_14 hc1_15 hc1_16 hc1_17 hc1_18 hc1_19 hc1_20 hc1_21 hc1_22 hc1_23 hc1_24 hc1_25 hc1_26 hc1_27
do
sed 's:hc1_01:'${run}':g' /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srHC1_e2_cropped_hc1_01_${hrf}.feat/design.fsf > /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srHC1_e2_cropped_${run}_${hrf}.fsf
feat /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srHC1_e2_cropped_${run}_${hrf}.fsf &
done

sed 's:HC1:HC2:g' /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srHC1_e2_cropped_hc1_01_${hrf}.feat/design.fsf > /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srHC2_e2_cropped_hc1_01_${hrf}.fsf

for run in hc2_01 hc2_02 hc2_03 hc2_04 hc2_05 hc2_06 hc2_07 hc2_08 hc2_09 hc2_10 hc2_11 hc2_12 hc2_13 hc2_14 hc2_15 hc2_16 hc2_17 hc2_18 hc2_19 hc2_20 hc2_21 hc2_22 hc2_23 hc2_24 hc2_25 hc2_26 hc2_27
do
sed 's:hc1_01:'${run}':g' /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srHC2_e2_cropped_hc1_01_${hrf}.fsf > /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srHC2_e2_cropped_${run}_${hrf}.fsf
feat /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srHC2_e2_cropped_${run}_${hrf}.fsf &
done
rm /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srHC2_e2_cropped_hc1_01_${hrf}.fsf

for run in hc2_01 hc2_02 hc2_03 hc2_04 hc2_05 hc2_06 hc2_07 hc2_08 hc2_09 hc2_10 hc2_11 hc2_12 hc2_13 hc2_14 hc2_15 hc2_16 hc2_17 hc2_18 hc2_19 hc2_20 hc2_21 hc2_22 hc2_23 hc2_24 hc2_25 hc2_26 hc2_27
do
sed 's:sess1:sess2:g' /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srHC2_e2_cropped_${run}_${hrf}.fsf > /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/srHC2_e2_cropped_${run}_${hrf}.fsf
feat /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/srHC2_e2_cropped_${run}_${hrf}.fsf &
done

for run in hc1_01 hc1_02 hc1_03 hc1_04 hc1_05 hc1_06 hc1_07 hc1_08 hc1_09 hc1_10 hc1_11 hc1_12 hc1_13 hc1_14 hc1_15 hc1_16 hc1_17 hc1_18 hc1_19 hc1_20 hc1_21 hc1_22 hc1_23 hc1_24 hc1_25 hc1_26 hc1_27
do
sed 's:sess1:sess2:g' /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srHC1_e2_cropped_${run}_${hrf}.feat/design.fsf > /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/srHC1_e2_cropped_${run}_${hrf}.fsf
feat /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/srHC1_e2_cropped_${run}_${hrf}.fsf &
done
done
