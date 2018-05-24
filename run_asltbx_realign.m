%timing parameters in ms
%system calls to fsl commands only work if Matlab is started from the
%command line
function run_asltbx_realign(mydir, expression)

Labeltime=1665;
Delaytime=900;
minTR=3900;
TE=10;
nslices=25;

cd(mydir);
inputdir = mydir;
inputfiles = dir(expression);

spm
global defaults;
defaults = spm('Defaults','fmri');

%%%%%%%%%%%%%%%%
%%REALIGN
%%%%%%%%%%%%%%%%
defs = defaults.realign;
% Flags to pass to routine to calculate realignment parameters
% (spm_realign)
%as (possibly) seen at spm_realign_ui,
% -fwhm = 5 for fMRI
% -rtm = 0 for fMRI
% for this particular data set, we did not perform a second realignment to the mean
% the coregistration between the reference control and label volume is also omitted
reaFlags = struct(...
    'quality', defs.estimate.quality,...  % estimation quality
    'fwhm', 5,...                         % smooth before calculation
    'rtm', 1,...                          % whether to realign to mean
    'PW',''...                            %
    );
% Flags to pass to routine to create resliced images
% (spm_reslice)
resFlags = struct(...
    'interp', 1,...                       % trilinear interpolation
    'wrap', defs.write.wrap,...           % wrapping info (ignore...)
    'mask', defs.write.mask,...           % masking (see spm_reslice)
    'which',2,...                         % write reslice time series for later use
    'mean',1);                            % do write mean image
%grab file to realign with GUI
%Select both the ASL data and the M0 data in order to register M0 data to ASL data
%P = spm_select
for j = 1:length(inputfiles)
    diary(strcat(inputdir,'/',inputfiles(j).name,'.log'));
    inputfiles(j).name
    in = fullfile(inputdir,inputfiles(j).name);
    spm_realign_asl(in, reaFlags);
    % Run reslice
    spm_reslice(in, resFlags);
    diary off;
end



