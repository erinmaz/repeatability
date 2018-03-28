#!/bin/bash
cd /Users/erin/Desktop/Projects/Repeatability/scratch/R02/sess1/nii 
perfusion_subtract rRS_e1_cropped.nii rRS_e1_cropped_sub -m
fslmaths rRS_e1_cropped -Tmean rRS_e1_cropped_Tmean
fslmaths rRS_e1_cropped -Tstd rRS_e1_cropped_Tstd
fslmaths rRS_e1_cropped_Tmean -div rRS_e1_cropped_Tstd -nan rRS_e1_cropped_Tsnr

fslmaths rRS_e1_cropped_sub -Tmean rRS_e1_cropped_sub_Tmean
fslmaths rRS_e1_cropped_sub -Tstd rRS_e1_cropped_sub_Tstd
fslmaths rRS_e1_cropped_sub_Tmean -div rRS_e1_cropped_sub_Tstd -nan rRS_e1_cropped_sub_Tsnr

fslstats rRS_e1_cropped_Tsnr -k /Users/erin/Desktop/Projects/Repeatability/scratch/R02/sess1/nii/meanRS_e1_cropped_brain_mask.nii -M
128.818337 

fslstats /Users/erin/Desktop/Projects/Repeatability/scratch/R02/sess1/nii/rRS_e1_cropped_sub_Tsnr.nii.gz -k /Users/erin/Desktop/Projects/Repeatability/scratch/R02/sess1/nii/meanRS_e1_cropped_brain_mask.nii -M
1.247291 

rRS_e1_cropped_nan components to remove
fsl_regfilt 2,4,5,8,9,12,14,15,16,17,18,19,20,21,22,24,26,27,29  

fsl_regfilt -i /Users/erin/Desktop/Projects/Repeatability/scratch/R02/sess1/nii/rRS_e1_cropped_nan.feat/filtered_func_data.nii.gz -d /Users/erin/Desktop/Projects/Repeatability/scratch/R02/sess1/nii/rRS_e1_cropped_nan.feat/filtered_func_data.ica/melodic_mix -o /Users/erin/Desktop/Projects/Repeatability/scratch/R02/sess1/nii/rRS_e1_cropped_nan.feat/filtered_func_data_clean -f "2,4,5,8,9,12,14,15,16,17,18,19,20,21,22,24,26,27,29"

perfusion_subtract filtered_func_data_clean.nii.gz filtered_func_data_clean_sub -m

~/GoogleDrive/code/tsnr_calc.sh filtered_func_data_clean /Users/erin/Desktop/Projects/Repeatability/scratch/R02/sess1/nii/meanRS_e1_cropped_brain_mask.nii 
210.627688 

 ~/GoogleDrive/code/tsnr_calc.sh filtered_func_data_clean_sub /Users/erin/Desktop/Projects/Repeatability/scratch/R02/sess1/nii/meanRS_e1_cropped_brain_mask.nii
 2.017724 
 
 Hard to identify artifactual components on subtraction timeseries
Try melodic on unsubtracted without highpass...
Or just regress out linear drift first??
This doesnt really m atter because we will still do subtraction even if we did a highpass
no it will matter, because we could still accidentally filter out task before subtracting. ? right?


fslmaths filtered_func_data_clean_sub -bptf -1 2 filtered_func_data_clean_sub_bptf
Erins-MacBook-Pro:rRS_e1_cropped_nan.feat erin$ ~/GoogleDrive/code/tsnr_calc.sh filtered_func_data_clean_sub_bptf /Users/erin/Desktop/Projects/Repeatability/scratch/R02/sess1/nii/meanRS_e1_cropped_brain_mask.nii 
3.536879 

Erins-MacBook-Pro:rRS_e1_cropped_nan++.feat erin$ ~/GoogleDrive/code/tsnr_calc.sh filtered_func_data /Users/erin/Desktop/Projects/Repeatability/scratch/R02/sess1/nii/meanRS_e1_cropped_brain_mask.nii 
128.818337 

fsl_regfilt -i filtered_func_data.nii.gz -d design.mat -f 1 -o filtered_func_data_nolinear


Erins-MacBook-Pro:rRS_e1_cropped_nan++.feat erin$ ~/GoogleDrive/code/tsnr_calc.sh filtered_func_data_nolinear /Users/erin/Desktop/Projects/Repeatability/scratch/R02/sess1/nii/meanRS_e1_cropped_brain_mask.nii 
131.829841 

filtered_func_data_nolinear components to remove
2,4,5,9,11,14,15,16,17,18,20,21,22,23,24,25,26,27
Not totally consistent with my decision on the previous one... :(

fsl_regfilt -i /Users/erin/Desktop/Projects/Repeatability/scratch/R02/sess1/nii/rRS_e1_cropped_nan++.feat/filtered_func_data_nolinear.feat/filtered_func_data -d /Users/erin/Desktop/Projects/Repeatability/scratch/R02/sess1/nii/rRS_e1_cropped_nan++.feat/filtered_func_data_nolinear.feat/filtered_func_data.ica/melodic_mix -o /Users/erin/Desktop/Projects/Repeatability/scratch/R02/sess1/nii/rRS_e1_cropped_nan++.feat/filtered_func_data_nolinear.feat/filtered_func_data_clean -f "2,4,5,9,11,14,15,16,17,18,20,21,22,23,24,25,26,27"

perfusion_subtract /Users/erin/Desktop/Projects/Repeatability/scratch/R02/sess1/nii/rRS_e1_cropped_nan++.feat/filtered_func_data_nolinear.feat/filtered_func_data_clean.nii.gz /Users/erin/Desktop/Projects/Repeatability/scratch/R02/sess1/nii/rRS_e1_cropped_nan++.feat/filtered_func_data_nolinear.feat/filtered_func_data_clean_sub

Erins-MacBook-Pro:rRS_e1_cropped_nan++.feat erin$ ~/GoogleDrive/code/tsnr_calc.sh /Users/erin/Desktop/Projects/Repeatability/scratch/R02/sess1/nii/rRS_e1_cropped_nan++.feat/filtered_func_data_nolinear.feat/filtered_func_data_clean_sub.nii.gz /Users/erin/Desktop/Projects/Repeatability/scratch/R02/sess1/nii/meanRS_e1_cropped_brain_mask.nii 
2.026284 
fslmaths /Users/erin/Desktop/Projects/Repeatability/scratch/R02/sess1/nii/rRS_e1_cropped_nan++.feat/filtered_func_data_nolinear.feat/filtered_func_data_clean_sub.nii.gz -bptf -1 2 /Users/erin/Desktop/Projects/Repeatability/scratch/R02/sess1/nii/rRS_e1_cropped_nan++.feat/filtered_func_data_nolinear.feat/filtered_func_data_clean_sub_bptf

