cd /Users/erin/Desktop/Projects/Repeatability/working/ICC_input_RS_CBF
%mkdir output

myfile='meanCBF_2_srRS_e1_cropped_nn.txt';
%myfile='meanCBF_2_srRS_e1_cropped.txt';
%myfile='meanCBF_2_srRS_e1_cropped_thr_nn.txt';
%myfile='rRS_e1_cropped_nan_feat_copes_nn.txt';
%myfile='meanCBF_2_srRS_e1_cropped_statsthresh_nn.txt';
%myfile='meanCBF_2_srRS_e1_cropped_statsthresh_thr_nn.txt';

mask='/Users/erin/Desktop/Projects/Repeatability/ROIs/MNI152_T1_2mm_brain_mask.nii';
%mask='/Users/erin/Desktop/Projects/Repeatability/ROIs/ROIs_used.nii';

[~,myfilename,~]=fileparts(myfile);
[~,maskname,~]=fileparts(mask);

output=fullfile('output',[myfilename '_' maskname '.txt']);
%matname=[myfilename '.mat'];
%outputmat=fullfile('output',matname);

myfileid=fopen(myfile);
data=textscan(myfileid,'%s');
fclose(myfileid);

[ROI_vICC_2A_con, v_ICC_2A_con, v_cv, v_numvoxels] = intravoxel_rel_erin(mask,'y',data);

median_ICC=ROI_vICC_2A_con.cluster_1(1);
stderr_ICC=ROI_vICC_2A_con.cluster_1(2);
v_cvT=v_cv';
v_ICC_2A_conT=v_ICC_2A_con';
v_numvoxelsT=v_numvoxels';
ROI_vICC_2A_conT=ROI_vICC_2A_con';
median_ICCT=median_ICC';
stderr_ICCT=stderr_ICC';

%outputtable=table(cellstr(myfile),median_ICCT,stderr_ICCT,v_ICC_2A_conT,v_cvT,v_numvoxelsT);
outputtable=table(cellstr(myfile),cellstr(mask),median_ICC,stderr_ICC,v_ICC_2A_con,v_cv,v_numvoxels);
writetable(outputtable,output);

%save(outputmat);