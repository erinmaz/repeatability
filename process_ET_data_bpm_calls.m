analysis_dir = '/Users/erin/Desktop/Projects/Repeatability/working';
subjects = {'R02','R03','R05','R06','R07','R08','R09','R10'};
%subjects = {'R03','R05','R06','R07','R08','R09','R10'};

sessions = {
    {'sess1','sess2'}
    {'sess1','sess2'}
    {'sess1','sess2'}
    {'sess1','sess2'}
    {'sess1','sess2'}
    {'sess1','sess2'}
    {'sess1','sess2'}
    {'sess1','sess2'}
};

for kk = 1:length(subjects)
    theSessions = sessions{kk};
    for jj = 1:length(theSessions)
        result(kk,jj)=process_ET_data_bpm(fullfile(analysis_dir,subjects{kk},theSessions{jj},'respiract','matlab.mat'));
    end
end

