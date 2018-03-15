%function BH_HCanalysis_input(infile,endrow,thedir,HC1_starttime,HC2_starttime)
function process_ET_data(infile,endrow,thedir,HC1_starttime,HC2_starttime)
fixplot1('%9.1f'); % I'm not sure this is working properly, but I'm also not sure we need the resolution it gives us given the slow breath-by-breath and EPI data.
cd(thedir);

bh_dur = 304/60; %duration in min 
buffer=1000; %to avoid NaNs after resampling 
respiract = dlmread(infile, '\t',[2,0,endrow,12]);

figure
plot(respiract(:,4))

pts = input('Enter 1 x 2 matrix (start ind of bh1 and bh2): ');
%manually read off graph and put in, based on paced breathing task (4 outs before first out and hold, go from expected out, 
%plus two out on either side (so we're expecting bh1_3.txt to be the best model)
%export cursor to workspace

bh1_est_actstart = pts(1);
bh2_est_actstart = pts(2);
bh1_starttime = respiract(bh1_est_actstart,1);
bh1_endind = find(respiract(:,1) > bh1_starttime+bh_dur,1);
bh1_CO2=respiract((bh1_est_actstart-buffer):bh1_endind+buffer,4);
bh1_samptime_min=respiract(bh1_est_actstart-buffer:bh1_endind+buffer,1);
bh1_samptime_sec=bh1_samptime_min*60;
bh1_samptime_sec_zero = bh1_samptime_sec-bh1_samptime_sec(buffer);

figure
plot(bh1_CO2)
hold
[peaks,locs]=findpeaks(bh1_CO2,'minpeakdistance',75,'minpeakheight',23,'minpeakprominence',7);
plot(locs,peaks,'*')
%Breakpoint here, fix peaks before continuing


%bh1_resampled_data=interp1(bh1_samptime_sec_zero(locs),bh1_CO2(locs),0:4:300);
%bh1_resampled_data2=interp1(bh1_samptime_sec_zero(locs),bh1_CO2(locs),4:4:304);
%bh1_resampled_data3=interp1(bh1_samptime_sec_zero(locs),bh1_CO2(locs),8:4:308);
%bh1_resampled_data4=interp1(bh1_samptime_sec_zero(locs),bh1_CO2(locs),12:4:312);

%bh1_resampled_data_minus2=interp1(bh1_samptime_sec_zero(locs),bh1_CO2(locs),-4:4:296);
%bh1_resampled_data_minus3=interp1(bh1_samptime_sec_zero(locs),bh1_CO2(locs),-8:4:292);
%bh1_resampled_data_minus4=interp1(bh1_samptime_sec_zero(locs),bh1_CO2(locs),-12:4:288);

%Don't subtract min here, do this in analysis_step4_crop.sh
%bh1_resampled_data=bh1_resampled_data-min(bh1_resampled_data);
%bh1_resampled_data2=bh1_resampled_data2-min(bh1_resampled_data2);
%bh1_resampled_data3=bh1_resampled_data3-min(bh1_resampled_data3);
%bh1_resampled_data4=bh1_resampled_data4-min(bh1_resampled_data4);

%bh1_resampled_data_minus2=bh1_resampled_data_minus2-min(bh1_resampled_data_minus2);
%bh1_resampled_data_minus3=bh1_resampled_data_minus3-min(bh1_resampled_data_minus3);
%bh1_resampled_data_minus4=bh1_resampled_data_minus4-min(bh1_resampled_data_minus4);

figure
hold
plot(bh1_resampled_data);
%plot(bh1_resampled_data2);
%plot(bh1_resampled_data3);
%plot(bh1_resampled_data4);
%plot(bh1_resampled_data_minus4);
%plot(bh1_resampled_data_minus2);

% bh1_output_file=sprintf('bh1_minus3.txt');
% save(bh1_output_file,'bh1_resampled_data_minus3','-ascii','-tabs');
% 
% bh1_output_file=sprintf('bh1_minus2.txt');
% save(bh1_output_file,'bh1_resampled_data_minus2','-ascii','-tabs');
% 
% bh1_output_file=sprintf('bh1_minus4.txt');
% save(bh1_output_file,'bh1_resampled_data_minus4','-ascii','-tabs');
% 
% bh1_output_file=sprintf('bh1_3.txt');
% save(bh1_output_file,'bh1_resampled_data3','-ascii','-tabs');
% 
% bh1_output_file=sprintf('bh1_2.txt');
% save(bh1_output_file,'bh1_resampled_data2','-ascii','-tabs');

bh1_output_file=sprintf('bh1_1.txt');
save(bh1_output_file,'bh1_resampled_data','-ascii','-tabs');

% bh1_output_file=sprintf('bh1_4.txt');
% save(bh1_output_file,'bh1_resampled_data4','-ascii','-tabs');


%RENAME RESAMPLED_DATA AND SAMPTIME VARIABLES BELOW TO UNIQUE VALUES

bh2_starttime = respiract(bh2_est_actstart,1);
bh2_endind = find(respiract(:,1) > bh2_starttime+bh_dur,1);

bh2_CO2=respiract((bh2_est_actstart-buffer):bh2_endind+buffer,4);

bh2_samptime_min=respiract(bh2_est_actstart-buffer:bh2_endind+buffer,1);
bh2_samptime_sec=bh2_samptime_min*60;
bh2_samptime_sec_zero = bh2_samptime_sec-bh2_samptime_sec(buffer);

figure
plot(bh2_CO2)
hold
[peaks2,locs2]=findpeaks(bh2_CO2,'minpeakdistance',75,'minpeakheight',23, 'minpeakprominence',7);
plot(locs2,peaks2,'*')
%Breakpoint here, fix peaks before continuing

bh2_resampled_data=interp1(bh2_samptime_sec_zero(locs2),bh2_CO2(locs2),0:4:300);
% bh2_resampled_data2=interp1(bh2_samptime_sec_zero(locs2),bh2_CO2(locs2),4:4:304);
% bh2_resampled_data3=interp1(bh2_samptime_sec_zero(locs2),bh2_CO2(locs2),8:4:308);
% bh2_resampled_data4=interp1(bh2_samptime_sec_zero(locs2),bh2_CO2(locs2),12:4:312);
% 
% bh2_resampled_data_minus2=interp1(bh2_samptime_sec_zero(locs2),bh2_CO2(locs2),-4:4:296);
% bh2_resampled_data_minus3=interp1(bh2_samptime_sec_zero(locs2),bh2_CO2(locs2),-8:4:292);
% bh2_resampled_data_minus4=interp1(bh2_samptime_sec_zero(locs2),bh2_CO2(locs2),-12:4:288);

bh2_resampled_data=bh2_resampled_data-min(bh2_resampled_data);
% bh2_resampled_data2=bh2_resampled_data2-min(bh2_resampled_data2);
% bh2_resampled_data3=bh2_resampled_data3-min(bh2_resampled_data3);
% bh2_resampled_data4=bh2_resampled_data4-min(bh2_resampled_data4);
% 
% bh2_resampled_data_minus2=bh2_resampled_data_minus2-min(bh2_resampled_data_minus2);
% bh2_resampled_data_minus3=bh2_resampled_data_minus3-min(bh2_resampled_data_minus3);
% bh2_resampled_data_minus4=bh2_resampled_data_minus4-min(bh2_resampled_data_minus4);

figure
hold
plot(bh2_resampled_data);
% plot(bh2_resampled_data2);
% plot(bh2_resampled_data3);
% plot(bh2_resampled_data4);
% plot(bh2_resampled_data_minus4);

% bh2_output_file=sprintf('bh2_3.txt');
% save(bh2_output_file,'bh2_resampled_data3','-ascii','-tabs');
% 
% bh2_output_file=sprintf('bh2_2.txt');
% save(bh2_output_file,'bh2_resampled_data2','-ascii','-tabs');

bh2_output_file=sprintf('bh2_1.txt');
save(bh2_output_file,'bh2_resampled_data','-ascii','-tabs');

% 
% bh2_output_file=sprintf('bh2_4.txt');
% save(bh2_output_file,'bh2_resampled_data4','-ascii','-tabs');
% 
% bh2_output_file=sprintf('bh2_minus3.txt');
% save(bh2_output_file,'bh2_resampled_data_minus3','-ascii','-tabs');
% 
% bh2_output_file=sprintf('bh2_minus2.txt');
% save(bh2_output_file,'bh2_resampled_data_minus2','-ascii','-tabs');
% 
% bh2_output_file=sprintf('bh2_minus4.txt');
% save(bh2_output_file,'bh2_resampled_data_minus4','-ascii','-tabs');


%%%%%%%%%%% HC RUNS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%HC1_startind = find(respiract(:,1) == HC1_starttime);
%HC2_startind = find(respiract(:,1) == HC2_starttime);

indtmp=(respiract(:,1) - HC1_starttime) > 5e-5;
HC1_startind = find(indtmp==1,1);
indtmp=(respiract(:,1) - HC2_starttime) > 5e-5;
HC2_startind = find(indtmp==1,1);

hc_dur=360/60;

HC1_endtime=HC1_starttime+hc_dur;
HC2_endtime=HC2_starttime+hc_dur;
HC1_endind= find(respiract(:,1) > HC1_endtime,1);
HC2_endind= find(respiract(:,1) > HC2_endtime,1);

hc1_CO2=respiract((HC1_startind-buffer:HC1_endind+buffer),4);

hc1_samptime_min=respiract(HC1_startind-buffer:HC1_endind+buffer,1);
hc1_samptime_sec=hc1_samptime_min*60;
hc1_samptime_sec_zero = hc1_samptime_sec-hc1_samptime_sec(buffer);
figure
plot(hc1_CO2);
hold
[peaks3,locs3]=findpeaks(hc1_CO2,'minpeakdistance',75,'minpeakheight',23, 'minpeakprominence',4);
plot(locs3,peaks3,'*');

hc1_resampled_data=interp1(hc1_samptime_sec_zero(locs3),hc1_CO2(locs3),0:4:356);
% hc1_resampled_data2=interp1(hc1_samptime_sec_zero(locs3),hc1_CO2(locs3),4:4:360);
% hc1_resampled_data3=interp1(hc1_samptime_sec_zero(locs3),hc1_CO2(locs3),8:4:364);
% hc1_resampled_data4=interp1(hc1_samptime_sec_zero(locs3),hc1_CO2(locs3),12:4:368);
% 
% hc1_resampled_data_minus2=interp1(hc1_samptime_sec_zero(locs3),hc1_CO2(locs3),-4:4:352);
% hc1_resampled_data_minus3=interp1(hc1_samptime_sec_zero(locs3),hc1_CO2(locs3),-8:4:348);
% hc1_resampled_data_minus4=interp1(hc1_samptime_sec_zero(locs3),hc1_CO2(locs3),-12:4:344);

hc1_resampled_data=hc1_resampled_data-min(hc1_resampled_data);
% hc1_resampled_data2=hc1_resampled_data2-min(hc1_resampled_data2);
% hc1_resampled_data3=hc1_resampled_data3-min(hc1_resampled_data3);
% hc1_resampled_data4=hc1_resampled_data4-min(hc1_resampled_data4);
% 
% 
% hc1_resampled_data_minus2=hc1_resampled_data_minus2-min(hc1_resampled_data_minus2);
% hc1_resampled_data_minus3=hc1_resampled_data_minus3-min(hc1_resampled_data_minus3);
% hc1_resampled_data_minus4=hc1_resampled_data_minus4-min(hc1_resampled_data_minus4);

figure
hold
plot(hc1_resampled_data);
% plot(hc1_resampled_data2);
% plot(hc1_resampled_data3);
% plot(hc1_resampled_data4);
% 
% hc1_output_file=sprintf('hc1_3.txt');
% save(hc1_output_file,'hc1_resampled_data3','-ascii','-tabs');
% 
% hc1_output_file=sprintf('hc1_2.txt');
% save(hc1_output_file,'hc1_resampled_data2','-ascii','-tabs');
% 
hc1_output_file=sprintf('hc1_1.txt');
save(hc1_output_file,'hc1_resampled_data','-ascii','-tabs');
% 
% hc1_output_file=sprintf('hc1_4.txt');
% save(hc1_output_file,'hc1_resampled_data4','-ascii','-tabs');
% 
% hc1_output_file=sprintf('hc1_minus3.txt');
% save(hc1_output_file,'hc1_resampled_data_minus3','-ascii','-tabs');
% 
% hc1_output_file=sprintf('hc1_minus2.txt');
% save(hc1_output_file,'hc1_resampled_data_minus2','-ascii','-tabs');
% 
% hc1_output_file=sprintf('hc1_minus4.txt');
% save(hc1_output_file,'hc1_resampled_data_minus4','-ascii','-tabs');


hc2_CO2=respiract((HC2_startind-buffer:HC2_endind+buffer),4);
hc2_samptime_min=respiract(HC2_startind-buffer:HC2_endind+buffer,1);
hc2_samptime_sec=hc2_samptime_min*60;
hc2_samptime_sec_zero = hc2_samptime_sec-hc2_samptime_sec(buffer);
figure
plot(hc2_CO2);
hold
[peaks4,locs4]=findpeaks(hc2_CO2,'minpeakdistance',75,'minpeakheight',23, 'minpeakprominence',4);
plot(locs4,peaks4,'*');

hc2_resampled_data=interp1(hc2_samptime_sec_zero(locs4),hc2_CO2(locs4),0:4:356);
% hc2_resampled_data2=interp1(hc2_samptime_sec_zero(locs4),hc2_CO2(locs4),4:4:360);
% hc2_resampled_data3=interp1(hc2_samptime_sec_zero(locs4),hc2_CO2(locs4),8:4:364);
% hc2_resampled_data4=interp1(hc2_samptime_sec_zero(locs4),hc2_CO2(locs4),12:4:368);
% 
% hc2_resampled_data_minus2=interp1(hc2_samptime_sec_zero(locs4),hc2_CO2(locs4),-4:4:352);
% hc2_resampled_data_minus3=interp1(hc2_samptime_sec_zero(locs4),hc2_CO2(locs4),-8:4:348);
% hc2_resampled_data_minus4=interp1(hc2_samptime_sec_zero(locs4),hc2_CO2(locs4),-12:4:344);


hc2_resampled_data=hc2_resampled_data-min(hc2_resampled_data);
% hc2_resampled_data2=hc2_resampled_data2-min(hc2_resampled_data2);
% hc2_resampled_data3=hc2_resampled_data3-min(hc2_resampled_data3);
% hc2_resampled_data4=hc2_resampled_data4-min(hc2_resampled_data4);
% hc2_resampled_data_minus2=hc2_resampled_data_minus2-min(hc2_resampled_data_minus2);
% hc2_resampled_data_minus3=hc2_resampled_data_minus3-min(hc2_resampled_data_minus3);
% hc2_resampled_data_minus4=hc2_resampled_data_minus4-min(hc2_resampled_data_minus4);
% 
% 
figure
hold
plot(hc2_resampled_data);
% plot(hc2_resampled_data2);
% plot(hc2_resampled_data3);
% plot(hc2_resampled_data4);
% 
% hc2_output_file=sprintf('hc2_3.txt');
% save(hc2_output_file,'hc2_resampled_data3','-ascii','-tabs');
% 
% hc2_output_file=sprintf('hc2_2.txt');
% save(hc2_output_file,'hc2_resampled_data2','-ascii','-tabs');

hc2_output_file=sprintf('hc2_1.txt');
save(hc2_output_file,'hc2_resampled_data','-ascii','-tabs');
% 
% hc2_output_file=sprintf('hc2_4.txt');
% save(hc2_output_file,'hc2_resampled_data4','-ascii','-tabs');
% 
% hc2_output_file=sprintf('hc2_minus3.txt');
% save(hc2_output_file,'hc2_resampled_data_minus3','-ascii','-tabs');
% 
% hc2_output_file=sprintf('hc2_minus2.txt');
% save(hc2_output_file,'hc2_resampled_data_minus2','-ascii','-tabs');
% 
% hc2_output_file=sprintf('hc2_minus4.txt');
% save(hc2_output_file,'hc2_resampled_data_minus4','-ascii','-tabs');

save

