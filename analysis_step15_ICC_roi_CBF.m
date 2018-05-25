files=dir('/Users/erin/Desktop/Projects/Repeatability/working/ICC_input/ROIs/*.txt');

for i=1:length(files)
    data=load(fullfile(files(i).folder,files(i).name),'-ascii');
    ICC_val{i}=ICC(3,'k',data);
end
save('/Users/erin/Desktop/Projects/Repeatability/working/ICC_output/CBF_rois.mat')