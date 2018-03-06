%Step through these commands to process ET data and manually clean up as
%required

infile='raw_R02_sess1.txt';
endrow=117880; %from wc in terminal
thedir='/Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/respiract';
HC1_starttime=52.490867; %from events file
HC2_starttime=66.980983; %from events file
process_ET_data(infile,endrow,thedir,HC1_starttime,HC2_starttime)
%BH1 OK
%BH2 OK
%for HC1 breakpoint
badind=find(peaks3>45);
badind=[badind find(peaks3<24)];
locs3(badind)=[];
peaks3(badind)=[];
plot(locs3,peaks3,'*');
%for HC2 breakpoint
badind=find(peaks4>45);
locs4(badind)=[];
peaks4(badind)=[];
plot(locs4,peaks4,'*');

infile='raw_R02_sess2.txt';
endrow=118350; %from wc in terminal
HC1_starttime=48.067833;
HC2_starttime=62.956850;
thedir='/Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/respiract';
process_ET_data(infile,endrow,thedir,HC1_starttime,HC2_starttime)
%BH1 OK
%BH2 OK
%HC1
[peaks3,locs3]=findpeaks(hc1_CO2,'minpeakdistance',75,'minpeakheight',23, 'minpeakprominence',3);
badind=find(peaks3>50);
locs3(badind)=[];
peaks3(badind)=[];
plot(locs3,peaks3,'*');
%HC2
badind=[find(locs4==5198) find(locs4==3684)];
locs4(badind)=[];
peaks4(badind)=[];
plot(locs4,peaks4,'*');

infile='raw_R03_sess1.txt';
endrow=111670; %from wc in terminal
HC1_starttime=54.254283; %Actually HC2
HC2_starttime=61.614700; %Actually HC3
thedir='/Users/erin/Desktop/Projects/Repeatability/working/R03/sess1/respiract';
process_ET_data(infile,endrow,thedir,HC1_starttime,HC2_starttime)
%Quite a lot of rebreathing during breathhold runs
%BH1
badind=find(peaks<24);
locs(badind)=[];
peaks(badind)=[];
plot(locs,peaks,'*');
%BH2
badind=find(peaks2<24);
locs2(badind)=[];
peaks2(badind)=[];
plot(locs2,peaks2,'*');
%HC1 (actually HC2)
badind=find(peaks3>50);
locs3(badind)=[];
peaks3(badind)=[];
plot(locs3,peaks3,'*');
%HC2 (actually HC3)
badind=[find(peaks4<31) find(peaks4>49)];
locs4(badind)=[];
peaks4(badind)=[];
plot(locs4,peaks4,'*');

thedir='/Users/erin/Desktop/Projects/Repeatability/working/R03/sess2/respiract';
endrow=113525;
infile='raw_R03_sess2.txt';
HC1_starttime=35.697317;
HC2_starttime=50.844867;
process_ET_data(infile,endrow,thedir,HC1_starttime,HC2_starttime)
%hyperventilated by 2nd BH run
%BH1
badind=[1 3];
locs(badind)=[];
peaks(badind)=[];
plot(locs,peaks,'*');
%BH2 OK
%HC1
badind=find(peaks3>46);
locs3(badind)=[];
peaks3(badind)=[];
plot(locs3,peaks3,'*');
%HC2
badind=[1 6 find(peaks4>46)];
locs4(badind)=[];
peaks4(badind)=[];
plot(locs4,peaks4,'*');

thedir='/Users/erin/Desktop/Projects/Repeatability/working/R05/sess1/respiract';
cd(thedir);
endrow=121006;
infile='raw_R05_sess1.txt';
HC1_starttime=42.851033;
HC2_starttime=60.587967;
process_ET_data(infile,endrow,thedir,HC1_starttime,HC2_starttime);
%BH1 OK - This did not acheive much of a post-hold increase in ETCO2, but I
%do see some hypocapnia one breath after the hold
%Perhaps it is the paced breathing - i see a different result if it is
%faster versus slower than natural breathing
%BH2 OK but the same
%HC1
badind=find(peaks3>50);
locs3(badind)=[];
peaks3(badind)=[];
plot(locs3,peaks3,'*');
locs3 = [locs3; 3830; 3935];
peaks3 = [peaks3; hc1_CO2(3830); hc1_CO2(3935)];
plot(locs3,peaks3,'*');
%HC2
badind=find(peaks4>55);
locs4(badind)=[];
peaks4(badind)=[];
plot(locs4,peaks4,'*');

thedir='/Users/erin/Desktop/Projects/Repeatability/working/R05/sess2/respiract';
cd(thedir);
endrow=110828;
infile='raw_R05_sess2.txt';
HC1_starttime=35.418983;
HC2_starttime=58.778717;
process_ET_data(infile,endrow,thedir,HC1_starttime,HC2_starttime);
%BH1 OK
%BH2
[peaks2,locs2]=findpeaks(bh2_CO2,'minpeakdistance',75,'minpeakheight',26, 'minpeakprominence',7);
plot(locs2,peaks2,'*')
%HC1
badind=[find(peaks3<33) find(peaks3>46)];
locs3(badind)=[];
peaks3(badind)=[];
plot(locs3,peaks3,'*');
%HC2 OK

%Runs out of order
thedir='/Users/erin/Desktop/Projects/Repeatability/working/R06/sess1/respiract';
cd(thedir);
endrow=140206;
infile='raw_R06_sess1.txt';
HC1_starttime=65.464217;
HC2_starttime=89.918400;
process_ET_data(infile,endrow,thedir,HC1_starttime,HC2_starttime);
%Bh1 OK
%Bh2 OK
%HC1
badind=[find(locs3==614) find(locs3==3709) find(locs3==3816)];
locs3(badind)=[];
peaks3(badind)=[];
plot(locs3,peaks3,'*');
%HC2
badind=find(peaks4>50);
locs4(badind)=[];
peaks4(badind)=[];
plot(locs4,peaks4,'*');

thedir='/Users/erin/Desktop/Projects/Repeatability/working/R06/sess2/respiract';
cd(thedir);
endrow=102980;
infile='raw_R06_sess2.txt';
HC1_starttime=35.034500;	
HC2_starttime=51.969550;	
process_ET_data(infile,endrow,thedir,HC1_starttime,HC2_starttime);
%BH1 OK
%BH2 OK
%HC1
badind=find(peaks3>50);
locs3(badind)=[];
peaks3(badind)=[];
plot(locs3,peaks3,'*');
%HC2
badind=find(peaks4>50);
locs4(badind)=[];
peaks4(badind)=[];
plot(locs4,peaks4,'*');

thedir='/Users/erin/Desktop/Projects/Repeatability/working/R07/sess1/respiract';
cd(thedir);
endrow=104044;
infile='raw_R07_sess1.txt';
HC1_starttime=36.720817;
HC2_starttime=53.490417;
process_ET_data(infile,endrow,thedir,HC1_starttime,HC2_starttime);
%BH1
[peaks,locs]=findpeaks(bh1_CO2,'minpeakdistance',75,'minpeakheight',23,'minpeakprominence',12);
plot(locs,peaks,'*')
%BH2
[peaks2,locs2]=findpeaks(bh2_CO2,'minpeakdistance',75,'minpeakheight',23, 'minpeakprominence',15);
plot(locs2,peaks2,'*')
%HC1
badind=find(peaks3>50);
locs3(badind)=[];
peaks3(badind)=[];
plot(locs3,peaks3,'*');
%HC2
badind=find(peaks4>50);
locs4(badind)=[];
peaks4(badind)=[];
plot(locs4,peaks4,'*');

thedir='/Users/erin/Desktop/Projects/Repeatability/working/R07/sess2/respiract';
cd(thedir);
endrow=134696;
infile='raw_R07_sess2.txt';
HC1_starttime=64.792233;
HC2_starttime=79.594867;
process_ET_data(infile,endrow,thedir,HC1_starttime,HC2_starttime);
%BH1 OK
%BH2 OK
%HC1
[peaks3,locs3]=findpeaks(hc1_CO2,'minpeakdistance',75,'minpeakheight',32, 'minpeakprominence',4);
plot(locs3,peaks3,'*');
%HC2 OK



%%%%%%%%%%%%%%%%%%% HERE %%%%%%%%%%%
%something wrong with R08 sess1 file?


thedir='/Users/erin/Desktop/Projects/Repeatability/working/R08/sess1/respiract';
cd(thedir);
system('wc raw_R08_sess1.txt')
endrow=109952;
infile='raw_R08_sess1.txt';
HC1_starttime=44.7711;	% Event file is wrong. This is best guess from CO2 trace. Seemed to screw things up to do it this way, ended up going through everything for HC runs in debug
%Mar 6 2018. Cannot find HC1 starttime. It is off by 5.0000e-05. Edit
%process_ET_data.m to deal with this
HC2_starttime=59.567733;	
process_ET_data(infile,endrow,thedir,HC1_starttime,HC2_starttime);
%BH1 OK but messy
%BH2
[peaks2,locs2]=findpeaks(bh2_CO2,'minpeakdistance',75,'minpeakheight',24, 'minpeakprominence',7);
plot(locs2,peaks2,'*')
%HC1
badind=find(peaks3>50);
locs3(badind)=[];
peaks3(badind)=[];
plot(locs3,peaks3,'*');
%HC2
[peaks4,locs4]=findpeaks(hc2_CO2,'minpeakdistance',75,'minpeakheight',32, 'minpeakprominence',4);
plot(locs4,peaks4,'*');
badind=[find(locs4==3396) find(locs4==3745)];
locs4(badind)=[];
peaks4(badind)=[];
plot(locs4,peaks4,'*');

thedir='/Users/erin/Desktop/Projects/Repeatability/working/R08/sess2/respiract';
cd(thedir);
system('wc raw_R08_sess2.txt')
endrow=91816;
infile='raw_R08_sess2.txt';
HC1_starttime=29.689617;	
HC2_starttime=44.137017;
process_ET_data(infile,endrow,thedir,HC1_starttime,HC2_starttime);
%BH1 OK
%BH2
locs2(5)=[];
peaks2(5)=[];
plot(locs2,peaks2,'*')
%HC1
[peaks3,locs3]=findpeaks(hc1_CO2,'minpeakdistance',75,'minpeakheight',36, 'minpeakprominence',4);
badind=find(peaks3>52);
locs3(badind)=[];
peaks3(badind)=[];
plot(locs3,peaks3,'*');
%HC2
[peaks4,locs4]=findpeaks(hc2_CO2,'minpeakdistance',75,'minpeakheight',23, 'minpeakprominence',4);
badind=find(locs4==3703);
locs4(badind)=[];
peaks4(badind)=[];
plot(locs4,peaks4,'*');

thedir='/Users/erin/Desktop/Projects/Repeatability/working/R09/sess1/respiract';
cd(thedir);
system('wc raw_R09_sess1.txt')
endrow=135960;
HC1_starttime=57.619433;
HC2_starttime=72.003050;
infile='raw_R09_sess1.txt';
process_ET_data(infile,endrow,thedir,HC1_starttime,HC2_starttime);
%BH1
[peaks,locs]=findpeaks(bh1_CO2,'minpeakdistance',75,'minpeakheight',35,'minpeakprominence',7);
plot(locs,peaks,'*')
%BH2
[peaks2,locs2]=findpeaks(bh2_CO2,'minpeakdistance',75,'minpeakheight',35,'minpeakprominence',7);
plot(locs2,peaks2,'*')
%HC1
[peaks3,locs3]=findpeaks(hc1_CO2,'minpeakdistance',75,'minpeakheight',37, 'minpeakprominence',4);
plot(locs3,peaks3,'*');
badind=find(locs3==3739);
locs3(badind)=[];
peaks3(badind)=[];
plot(locs3,peaks3,'*');
%HC2
badind=find(peaks4>47);
locs4(badind)=[];
peaks4(badind)=[];
plot(locs4,peaks4,'*');

thedir='/Users/erin/Desktop/Projects/Repeatability/working/R09/sess2/respiract';
cd(thedir);
system('wc raw_R09_sess2.txt')
endrow=109120;
HC1_starttime=42.571617;	
HC2_starttime=58.018167;	
infile='raw_R09_sess2.txt';
process_ET_data(infile,endrow,thedir,HC1_starttime,HC2_starttime);
%BH1
[peaks,locs]=findpeaks(bh1_CO2,'minpeakdistance',75,'minpeakheight',35,'minpeakprominence',7);
plot(locs,peaks,'*')
%BH2
[peaks2,locs2]=findpeaks(bh2_CO2,'minpeakdistance',75,'minpeakheight',35, 'minpeakprominence',7);
plot(locs2,peaks2,'*')
%HC1
[peaks3,locs3]=findpeaks(hc1_CO2,'minpeakdistance',75,'minpeakheight',36, 'minpeakprominence',4);
plot(locs3,peaks3,'*');
badind=find(peaks3>52);
locs3(badind)=[];
peaks3(badind)=[];
plot(locs3,peaks3,'*');
%HC2
badind=[find(peaks4>50) find(peaks4<35)];
locs4(badind)=[];
peaks4(badind)=[];
plot(locs4,peaks4,'*');


thedir='/Users/erin/Desktop/Projects/Repeatability/working/R10/sess1/respiract';
cd(thedir);
system('wc raw_R10_sess1.txt')
endrow=94774;
infile='raw_R10_sess1.txt';
HC1_starttime=32.369933;
HC2_starttime=46.740050;
process_ET_data(infile,endrow,thedir,HC1_starttime,HC2_starttime);
%Hypocapnic during BHs
%BH1
[peaks,locs]=findpeaks(bh1_CO2,'minpeakdistance',75,'minpeakheight',19,'minpeakprominence',7);
plot(locs,peaks,'*')
%BH2
[peaks2,locs2]=findpeaks(bh2_CO2,'minpeakdistance',75,'minpeakheight',20.5, 'minpeakprominence',7);
plot(locs2,peaks2,'*')
%HC1
badind=find(peaks3>41);
locs3(badind)=[];
peaks3(badind)=[];
plot(locs3,peaks3,'*');
%HC2
badind=[find(locs4==9106) find(locs4==3720)];
locs4(badind)=[];
peaks4(badind)=[];
plot(locs4,peaks4,'*');


thedir='/Users/erin/Desktop/Projects/Repeatability/working/R10/sess2/respiract';
cd(thedir);
system('wc raw_R10_sess2.txt')
endrow=108906;
infile='raw_R10_sess2.txt';
HC1_starttime=38.338150;
HC2_starttime=52.722950;
process_ET_data(infile,endrow,thedir,HC1_starttime,HC2_starttime);
%Hypocapnic during BHs
%BH1 OK
%BH2
[peaks2,locs2]=findpeaks(bh2_CO2,'minpeakdistance',75,'minpeakheight',20.5, 'minpeakprominence',7);
plot(locs2,peaks2,'*')
%HC1
badind=find(peaks3>46);
locs3(badind)=[];
peaks3(badind)=[];
plot(locs3,peaks3,'*');
%HC2
badind=[find(peaks4>48) find(peaks4<25)];
locs4(badind)=[];
peaks4(badind)=[];
plot(locs4,peaks4,'*');
plot(locs4,peaks4,'*');


