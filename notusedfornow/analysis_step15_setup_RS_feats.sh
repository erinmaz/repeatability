#!/bin/bash

fslmaths /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/rRS_e1_cropped -nan /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/rRS_e1_cropped_nan
sed 's:sess1:sess2:g' /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rRS_e1_cropped_nan.feat/design.fsf > /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/rRS_e1_cropped_nan.fsf
feat /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/rRS_e1_cropped_nan.fsf


for sess in sess1 sess2
do
for sub in R03 R05 R06 R07 R08 R09 R10
do
fslmaths /Users/erin/Desktop/Projects/Repeatability/working/${sub}/${sess}/nii/rRS_e1_cropped -nan /Users/erin/Desktop/Projects/Repeatability/working/${sub}/${sess}/nii/rRS_e1_cropped_nan
sed 's:R02:'${sub}':g' /Users/erin/Desktop/Projects/Repeatability/working/R02/${sess}/nii/rRS_e1_cropped_nan.feat/design.fsf > /Users/erin/Desktop/Projects/Repeatability/working/${sub}/${sess}/nii/rRS_e1_cropped_nan.fsf 
feat /Users/erin/Desktop/Projects/Repeatability/working/${sub}/${sess}/nii/rRS_e1_cropped_nan.fsf 
done
done
