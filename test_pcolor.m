histxy=sparse(1+floor(double(Vimg_masked)),1+floor(double(Vmriimg_masked)),1);
xvec=0:10:max(Vimg_masked);
yvec=0:10:max(Vmriimg_masked);
figure
pcolor(yvec,xvec,histxy)


hist3xy = hist3([Vmriimg_masked Vimg_masked])
pcolor(hist3xy)
%I think i need to change this so that the bins are the same for both axis