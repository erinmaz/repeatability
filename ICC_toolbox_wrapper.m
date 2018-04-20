
files=dir('/Users/erin/Desktop/Projects/Repeatability/working/ICC_input/*.txt');
for i=1:length(files)
%for i=1:4    
myfileid=fopen(files(i).name);
data=textscan(myfileid,'%s');
[ROI_vICC_2A_con{i} v_ICC_2A_con{i} v_cv{i}] = intravoxel_rel_erin('/Users/erin/Desktop/Projects/Repeatability/ROIs/ROIs_used.nii','y',data);
fclose(myfileid)

end







