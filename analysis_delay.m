
function analysis_delay(moviefile)

[moviedir,moviename,movieext]=fileparts(moviefile);
movie=niftiread(moviefile);
[mip,delay]=max(movie,[],4);
niftiwrite(mip,fullfile(moviedir,[moviename '_mip' movieext]));
niftiwrite(delay,fullfile(moviedir,[moviename '_delay' movieext]));
end
%then need to run fslcpgeom: fslcpgeom meanBH1_e1_cropped_brain_mask.nii BH1_gamma3_6_CVR_e2_movie_mip