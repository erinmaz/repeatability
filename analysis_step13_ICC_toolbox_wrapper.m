
myfileid=fopen('/Users/erin/Desktop/Projects/Repeatability/working/ICC_input/bs_BH1_e1_gamma3_6_mip.txt')


files=dir('/Users/erin/Desktop/Projects/Repeatability/working/ICC_input/*.txt');
%files=dir('/Users/erin/Desktop/Projects/Repeatability/working/ICC_input/*less_than*.txt');
output='/Users/erin/Desktop/Projects/Repeatability/working/ICC_output/outputtable.txt';
outputmat='/Users/erin/Desktop/Projects/Repeatability/working/ICC_output/workspace.mat';
for i=1:length(files)
    %for i=1:4
    myfileid=fopen(fullfile(files(i).folder,files(i).name));
    data=textscan(myfileid,'%s');
    [ROI_vICC_2A_con{i} v_ICC_2A_con{i} v_cv{i} v_numvoxels{i}] = intravoxel_rel_erin('/Users/erin/Desktop/Projects/Repeatability/ROIs/ROIs_used.nii','y',data);
    fclose(myfileid)
    
end

for i=1:length(files)
    median_ICC(i)=ROI_vICC_2A_con{i}.cluster_1(1);
    stderr_ICC(i)=ROI_vICC_2A_con{i}.cluster_1(2);
    names{i}={files(i).name};
end

T=struct2cell(files);
names=T(1,:);
names=cellstr(names);
namesT=names';
v_cvT=v_cv';
v_ICC_2A_conT=v_ICC_2A_con';
v_numvoxelsT=v_numvoxels';
ROI_vICC_2A_conT=ROI_vICC_2A_con';
median_ICCT=median_ICC';
stderr_ICCT=stderr_ICC';

outputtable=table(namesT,median_ICCT,stderr_ICCT,v_ICC_2A_conT,v_cvT,v_numvoxelsT);
writetable(outputtable,output);

save(outputmat);