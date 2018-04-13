diary('working/ICC.txt');
activation_files=['/Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/meanCBF_2_srRS_e1_cropped_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R03/sess1/nii/meanCBF_2_srRS_e1_cropped_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R05/sess1/nii/meanCBF_2_srRS_e1_cropped_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R06/sess1/nii/meanCBF_2_srRS_e1_cropped_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R07/sess1/nii/meanCBF_2_srRS_e1_cropped_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R08/sess1/nii/meanCBF_2_srRS_e1_cropped_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R09/sess1/nii/meanCBF_2_srRS_e1_cropped_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R10/sess1/nii/meanCBF_2_srRS_e1_cropped_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/meanCBF_2_srRS_e1_cropped_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R03/sess2/nii/meanCBF_2_srRS_e1_cropped_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R05/sess2/nii/meanCBF_2_srRS_e1_cropped_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R06/sess2/nii/meanCBF_2_srRS_e1_cropped_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R07/sess2/nii/meanCBF_2_srRS_e1_cropped_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R08/sess2/nii/meanCBF_2_srRS_e1_cropped_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R09/sess2/nii/meanCBF_2_srRS_e1_cropped_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R10/sess2/nii/meanCBF_2_srRS_e1_cropped_to_standard.nii'];
RS_bs_ROI_vICC_2A_con = intravoxel_rel_erin('/Users/erin/Desktop/Projects/Repeatability/ROIs/ROIs_used.nii','y',activation_files);
diary off

diary on
activation_files=['/Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srBH1_e1_cropped_sub_bptf_bh1_20.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R03/sess1/nii/srBH1_e1_cropped_sub_bptf_bh1_09.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R05/sess1/nii/srBH1_e1_cropped_sub_bptf_bh1_09.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R06/sess1/nii/srBH1_e1_cropped_sub_bptf_bh1_18.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R07/sess1/nii/srBH1_e1_cropped_sub_bptf_bh1_19.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R08/sess1/nii/srBH1_e1_cropped_sub_bptf_bh1_17.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R09/sess1/nii/srBH1_e1_cropped_sub_bptf_bh1_13.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R10/sess1/nii/srBH1_e1_cropped_sub_bptf_bh1_16.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/srBH1_e1_cropped_sub_bptf_bh1_15.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R03/sess2/nii/srBH1_e1_cropped_sub_bptf_bh1_05.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R05/sess2/nii/srBH1_e1_cropped_sub_bptf_bh1_12.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R06/sess2/nii/srBH1_e1_cropped_sub_bptf_bh1_16.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R07/sess2/nii/srBH1_e1_cropped_sub_bptf_bh1_12.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R08/sess2/nii/srBH1_e1_cropped_sub_bptf_bh1_22.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R09/sess2/nii/srBH1_e1_cropped_sub_bptf_bh1_17.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R10/sess2/nii/srBH1_e1_cropped_sub_bptf_bh1_16.feat/thresh_zstat1_to_standard.nii']
BH1_bs_ROI_vICC_2A_con = intravoxel_rel_erin('/Users/erin/Desktop/Projects/Repeatability/ROIs/ROIs_used.nii','y',activation_files);
diary off

diary on 
activation_files=['/Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srBH2_e1_cropped_sub_bptf_bh2_12.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R03/sess1/nii/srBH2_e1_cropped_sub_bptf_bh2_15.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R05/sess1/nii/srBH2_e1_cropped_sub_bptf_bh2_03.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R06/sess1/nii/srBH2_e1_cropped_sub_bptf_bh2_15.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R07/sess1/nii/srBH2_e1_cropped_sub_bptf_bh2_16.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R08/sess1/nii/srBH2_e1_cropped_sub_bptf_bh2_18.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R09/sess1/nii/srBH2_e1_cropped_sub_bptf_bh2_16.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R10/sess1/nii/srBH2_e1_cropped_sub_bptf_bh2_23.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/srBH2_e1_cropped_sub_bptf_bh2_19.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R03/sess2/nii/srBH2_e1_cropped_sub_bptf_bh2_16.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R05/sess2/nii/srBH2_e1_cropped_sub_bptf_bh2_09.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R06/sess2/nii/srBH2_e1_cropped_sub_bptf_bh2_20.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R07/sess2/nii/srBH2_e1_cropped_sub_bptf_bh2_13.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R08/sess2/nii/srBH2_e1_cropped_sub_bptf_bh2_13.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R09/sess2/nii/srBH2_e1_cropped_sub_bptf_bh2_20.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R10/sess2/nii/srBH2_e1_cropped_sub_bptf_bh2_17.feat/thresh_zstat1_to_standard.nii']
BH2_bs_ROI_vICC_2A_con = intravoxel_rel_erin('/Users/erin/Desktop/Projects/Repeatability/ROIs/ROIs_used.nii','y',activation_files);
diary off

diary on 
activation_files=['/Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srBH1_e2_cropped_bh1_17.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R03/sess1/nii/srBH1_e2_cropped_bh1_11.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R05/sess1/nii/srBH1_e2_cropped_bh1_15.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R06/sess1/nii/srBH1_e2_cropped_bh1_16.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R07/sess1/nii/srBH1_e2_cropped_bh1_11.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R08/sess1/nii/srBH1_e2_cropped_bh1_15.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R09/sess1/nii/srBH1_e2_cropped_bh1_12.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R10/sess1/nii/srBH1_e2_cropped_bh1_18.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/srBH1_e2_cropped_bh1_15.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R03/sess2/nii/srBH1_e2_cropped_bh1_16.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R05/sess2/nii/srBH1_e2_cropped_bh1_18.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R06/sess2/nii/srBH1_e2_cropped_bh1_13.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R07/sess2/nii/srBH1_e2_cropped_bh1_13.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R08/sess2/nii/srBH1_e2_cropped_bh1_21.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R09/sess2/nii/srBH1_e2_cropped_bh1_15.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R10/sess2/nii/srBH1_e2_cropped_bh1_17.feat/thresh_zstat1_to_standard.nii']
BH1_bs_e2_ROI_vICC_2A_con = intravoxel_rel_erin('/Users/erin/Desktop/Projects/Repeatability/ROIs/ROIs_used.nii','y',activation_files);
diary off

diary on 
activation_files=['/Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srHC1_e2_cropped_block_gamma15_30.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R03/sess1/nii/srHC1_e2_cropped_hc1_19.feat/thresh_zstat1_to_standard.nii          '
'/Users/erin/Desktop/Projects/Repeatability/working/R05/sess1/nii/srHC1_e2_cropped_block_gamma15_30.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R06/sess1/nii/srHC1_e2_cropped_block_gamma15_30.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R07/sess1/nii/srHC1_e2_cropped_hc1_04.feat/thresh_zstat1_to_standard.nii          '
'/Users/erin/Desktop/Projects/Repeatability/working/R08/sess1/nii/srHC1_e2_cropped_block_gamma15_30.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R09/sess1/nii/srHC1_e2_cropped_hc1_15.feat/thresh_zstat1_to_standard.nii          '
'/Users/erin/Desktop/Projects/Repeatability/working/R10/sess1/nii/srHC1_e2_cropped_block_gamma15_30.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/srHC1_e2_cropped_hc1_12.feat/thresh_zstat1_to_standard.nii          '
'/Users/erin/Desktop/Projects/Repeatability/working/R03/sess2/nii/srHC1_e2_cropped_block_gamma15_30.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R05/sess2/nii/srHC1_e2_cropped_block_gamma15_30.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R06/sess2/nii/srHC1_e2_cropped_block_gamma15_30.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R07/sess2/nii/srHC1_e2_cropped_block_gamma15_30.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R08/sess2/nii/srHC1_e2_cropped_block_gamma15_30.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R09/sess2/nii/srHC1_e2_cropped_block_gamma15_30.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R10/sess2/nii/srHC1_e2_cropped_hc1_21.feat/thresh_zstat1_to_standard.nii          ']
HC1_bs_e2_ROI_vICC_2A_con = intravoxel_rel_erin('/Users/erin/Desktop/Projects/Repeatability/ROIs/ROIs_used.nii','y',activation_files);
diary off

diary on
activation_files=['/Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/srHC2_e2_cropped_hc2_15.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R03/sess1/nii/srHC2_e2_cropped_block_gamma15_30.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R05/sess1/nii/srHC2_e2_cropped_hc2_14.feat/thresh_zstat1_to_standard.nii          '
'/Users/erin/Desktop/Projects/Repeatability/working/R06/sess1/nii/srHC2_e2_cropped_block_gamma15_30.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R07/sess1/nii/srHC2_e2_cropped_block_gamma15_30.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R08/sess1/nii/srHC2_e2_cropped_block_gamma15_30.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R09/sess1/nii/srHC2_e2_cropped_hc2_08.feat/thresh_zstat1_to_standard.nii          '
'/Users/erin/Desktop/Projects/Repeatability/working/R10/sess1/nii/srHC2_e2_cropped_block_gamma15_30.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/srHC2_e2_cropped_block_gamma15_30.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R03/sess2/nii/srHC2_e2_cropped_block_gamma15_30.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R05/sess2/nii/srHC2_e2_cropped_block_gamma15_30.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R06/sess2/nii/srHC2_e2_cropped_hc2_14.feat/thresh_zstat1_to_standard.nii          '
'/Users/erin/Desktop/Projects/Repeatability/working/R07/sess2/nii/srHC2_e2_cropped_block_gamma15_30.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R08/sess2/nii/srHC2_e2_cropped_hc2_17.feat/thresh_zstat1_to_standard.nii          '
'/Users/erin/Desktop/Projects/Repeatability/working/R09/sess2/nii/srHC2_e2_cropped_block_gamma15_30.feat/thresh_zstat1_to_standard.nii'
'/Users/erin/Desktop/Projects/Repeatability/working/R10/sess2/nii/srHC2_e2_cropped_block_gamma15_30.feat/thresh_zstat1_to_standard.nii']
HC2_bs_e2_ROI_vICC_2A_con = intravoxel_rel_erin('/Users/erin/Desktop/Projects/Repeatability/ROIs/ROIs_used.nii','y',activation_files);
diary off
