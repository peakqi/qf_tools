function qf_colormap_redblue(clim)

r = [1 0 0];       %# start
w = [.9 .9 .9];    %# middle
b = [0 0 1];       %# end

%# colormap of size 64-by-3, ranging from red -> white -> blue
c1 = zeros(32,3); c2 = zeros(32,3);
for i=1:3
    c1(:,i) = linspace(r(i), w(i), 32);
    c2(:,i) = linspace(w(i), b(i), 32);
end
c = flipud([c1(1:end-1,:);c2]);
caxis(clim), colormap(c), colorbar