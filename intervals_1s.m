function intervals_1s(thedir)
cd(thedir)
load('matlab.mat')

figure
hold
bh1_resampled_data=zeros(16,76);
for i=-22:4
    index=i+23;
    bh1_resampled_data(index,:)=interp1(bh1_samptime_sec_zero(locs),bh1_CO2(locs),i:4:300+i);
    bh1_resampled_data(index,:)=bh1_resampled_data(index,:)-min(bh1_resampled_data(index,:));
    plot(bh1_resampled_data(index,:));
end
mkdir intervals_1s
cd intervals_1s
for i=1:size(bh1_resampled_data,1)
    bh1_output_file=sprintf('bh1_%02d.txt',i);
    data_to_save=bh1_resampled_data(i,:);
    save(bh1_output_file,'data_to_save','-ascii','-tabs');
end

figure
hold
bh2_resampled_data=zeros(16,76);
for i=-22:4
    index=i+23;
    bh2_resampled_data(index,:)=interp1(bh2_samptime_sec_zero(locs2),bh2_CO2(locs2),i:4:300+i);
    bh2_resampled_data(index,:)=bh2_resampled_data(index,:)-min(bh2_resampled_data(index,:));
    plot(bh2_resampled_data(index,:));
end
for i=1:size(bh2_resampled_data,1)
    bh2_output_file=sprintf('bh2_%02d.txt',i);
    data_to_save=bh2_resampled_data(i,:);
    save(bh2_output_file,'data_to_save','-ascii','-tabs');
end

figure
hold
hc1_resampled_data=zeros(16,76);
%we have removed 1st 14 volumes (56s) to match breath-hold duration, so we go from -12:3 ->44:60 to be equivalent to what I did for BH above.
%When I do this, I am (potentially) missing the max for R02 sess1 & 2, R05
%sess2, R06 sess2, R07 sess1, R08 sess2, 
%use a longer window
for i=34:60
    index=i-33;    
    hc1_resampled_data(index,:)=interp1(hc1_samptime_sec_zero(locs3),hc1_CO2(locs3),i:4:300+i);
    hc1_resampled_data(index,:)=hc1_resampled_data(index,:)-min(hc1_resampled_data(index,:));
    plot(hc1_resampled_data(index,:));
end
for i=1:size(hc1_resampled_data,1)
    hc1_output_file=sprintf('hc1_%02d.txt',i);
    data_to_save=hc1_resampled_data(i,:);
    save(hc1_output_file,'data_to_save','-ascii','-tabs');
end    

figure
hold
hc2_resampled_data=zeros(16,76);
for i=34:60
    index=i-33;    
    hc2_resampled_data(index,:)=interp1(hc2_samptime_sec_zero(locs4),hc2_CO2(locs4),i:4:300+i);
    hc2_resampled_data(index,:)=hc2_resampled_data(index,:)-min(hc2_resampled_data(index,:));
    plot(hc2_resampled_data(index,:));
end
for i=1:size(hc2_resampled_data,1)
    hc2_output_file=sprintf('hc2_%02d.txt',i);
    data_to_save=hc2_resampled_data(i,:);
    save(hc2_output_file,'data_to_save','-ascii','-tabs');
end  

save
end