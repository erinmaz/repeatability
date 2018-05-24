%timing parameters in ms
%system calls to fsl commands only work if Matlab is started from the
%command line
function run_asltbx(mydir, expression)
cd(mydir);
inputdir = mydir;
inputfiles = expression;

diary(strcat(inputdir,'/',inputfiles,'_cbf.log'));

Labeltime=1665
Delaytime=900
minTR=3900
TE=10
nslices=25

spm
global defaults;
defaults = spm('Defaults','fmri');

%%%%%%%%%%%%%%%%%%%
%%PERFUSION CALC
%%%%%%%%%%%%%%%%%%%
Filename = fullfile(inputdir,inputfiles);
M0img = [];
maskimg=[];
FirstimageType = 1;
SubtractionType = 2; %sinc subtraction
SubtractionOrder = 0;
Flag = [1 1 1 0 1 1 0 1 1]; % [MaskFlag,MeanFlag,CBFFlag,BOLDFlag,OutPerfFlag,OutCBFFlag,QuantFlag,ImgFormatFlag,D4Flag]
Timeshift = 0.5; %for sinc subtraction only
AslType = 1; % 1 = CASL
labeff = 0.85; %0.85 for pCASL, same in Yuhan's script - this should be measured for onsite scanner - has it?
MagType = 1; %1 for 3 T
Slicetime = (minTR - Labeltime - Delaytime)/nslices;
M0roi = [];
asl_perf_subtract(Filename,FirstimageType, SubtractionType, SubtractionOrder,Flag,Timeshift,AslType,labeff,MagType,Labeltime/1000, Delaytime/1000,Slicetime,TE,M0img,M0roi,maskimg)
diary off;
%tested for R02 sess1, CBF seems way too high! ARGH
%but actually not that different if I only look at these voxels in the
%old image:
%fslstats meanCBF_2_srRS_e1_cropped.nii.gz -k meanCBF_2_rRS_e1_cropped_nan_gm_sm.nii -M
%77.452563 
%less noticeable before because the voxels I've excluded tend to have lower
%CBF (?)
