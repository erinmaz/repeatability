
myfileid=fopen('/Users/erin/Desktop/Projects/Repeatability/working/ICC_input/meanCBF_2_rRS_e1_cropped_nan_gm_sm_thr.txt')

outputmat='/Users/erin/Desktop/Projects/Repeatability/working/ICC_output/CBF_voxelwise_ICC.mat';
% for i=1:length(files)
%     %for i=1:4
%    myfileid=fopen(fullfile(files(i).folder,files(i).name));
    data=textscan(myfileid,'%s');
    i=1
    [ROI_vICC_2A_con{i} v_ICC_2A_con{i} v_cv{i} v_numvoxels{i}] = intravoxel_rel_erin('/Users/erin/Desktop/Projects/Repeatability/ROIs/MNI152_T1_2mm_brain_mask.nii','y',data);
    fclose(myfileid)
    
%end

save(outputmat);