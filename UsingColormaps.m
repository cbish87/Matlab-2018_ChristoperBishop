%UsingColormaps.m

clear all
close all

img=1:10;
figure(1)
paintpots = ones(10,3);
image(img);
colormap(paintpots)
axis off;

for i=1:10
    paintpots(i,:)=(i/10);
    colormap(paintpots);
    pause
end