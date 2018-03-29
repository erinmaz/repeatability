#!/bin/bash

#sed 's:HC1:HC2:g' /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srHC1_e2_cropped_block_doublegamma_16.feat/design.fsf >  /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srHC2_e2_cropped_block_doublegamma_16.fsf

#feat /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srHC2_e2_cropped_block_doublegamma_16.fsf
 
#sed 's:sess1:sess2:g' /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srHC1_e2_cropped_block_doublegamma_16.feat/design.fsf > /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/srHC1_e2_cropped_block_doublegamma_16.fsf

#feat /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/srHC1_e2_cropped_block_doublegamma_16.fsf

#sed 's:sess1:sess2:g' /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srHC2_e2_cropped_block_doublegamma_16.feat/design.fsf > /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/srHC2_e2_cropped_block_doublegamma_16.fsf

#feat /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/srHC2_e2_cropped_block_doublegamma_16.fsf

#sed 's:HC1:HC2:g' /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srHC1_e2_cropped_block_gamma15_30.feat/design.fsf > /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srHC2_e2_cropped_block_gamma15_30.fsf

#feat /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srHC2_e2_cropped_block_gamma15_30.fsf

#sed 's:sess1:sess2:g'  /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srHC1_e2_cropped_block_gamma15_30.feat/design.fsf >   /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/srHC1_e2_cropped_block_gamma15_30.fsf

#feat /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/srHC1_e2_cropped_block_gamma15_30.fsf

#sed 's:sess1:sess2:g'  /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srHC2_e2_cropped_block_gamma15_30.feat/design.fsf >   /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/srHC2_e2_cropped_block_gamma15_30.fsf

#feat /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/srHC2_e2_cropped_block_gamma15_30.fsf

run_block_feats () {
	local sub=$1
	local sess=$2
 	sed 's:R02:'${sub}':g' /Users/erin/Desktop/Projects/Repeatability/working/R02/${sess}/nii/srHC1_e2_cropped_block_gamma15_30.feat/design.fsf > /Users/erin/Desktop/Projects/Repeatability/working/${sub}/${sess}/nii/srHC1_e2_cropped_block_gamma15_30.fsf
 	feat /Users/erin/Desktop/Projects/Repeatability/working/${sub}/${sess}/nii/srHC1_e2_cropped_block_gamma15_30.fsf
 	sed 's:R02:'${sub}':g' /Users/erin/Desktop/Projects/Repeatability/working/R02/${sess}/nii/srHC2_e2_cropped_block_gamma15_30.feat/design.fsf > /Users/erin/Desktop/Projects/Repeatability/working/${sub}/${sess}/nii/srHC2_e2_cropped_block_gamma15_30.fsf
 	feat /Users/erin/Desktop/Projects/Repeatability/working/${sub}/${sess}/nii/srHC2_e2_cropped_block_gamma15_30.fsf
 	
}
for sub in R03 R05 R06 R07 R08 R09 R10
do
run_block_feats "$sub" sess1 & 
done
wait
for sub in R03 R05 R06 R07 R08 R09 R10
do
run_block_feats "$sub" sess2 & 
done
