function fixplot1(str)
set(datacursormode(gcf),'UpdateFcn',{@myupdatefcn, str});