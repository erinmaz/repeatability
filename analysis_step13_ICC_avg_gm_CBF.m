data=load('/Users/erin/Desktop/Projects/Repeatability/working/ICC_input/AvgGM/RS_CBF.txt');
ICC_GM_avg=ICC(3,'k',data);
save('/Users/erin/Desktop/Projects/Repeatability/working/ICC_output/AvgGM_RS_CBF.mat');