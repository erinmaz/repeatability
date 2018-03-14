cd /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/respiract
load('matlab.mat')
figure
hold
bh1_resampled_data=zeros(16,76);
for i=-12:3
    index=i+13;
    bh1_resampled_data(index,:)=interp1(bh1_samptime_sec_zero(locs),bh1_CO2(locs),i:4:300+i);
    plot(bh1_resampled_data(index,:));
end
mkdir intervals_1s
cd intervals_1s
for i=1:size(bh1_resampled_data,1)
    bh1_output_file=sprintf('bh1_%02d.txt',i);
    data_to_save=bh1_resampled_data(i,:);
    save(bh1_output_file,'data_to_save','-ascii','-tabs');
end
save