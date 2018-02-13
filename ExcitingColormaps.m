%UsingColormaps.m

clear all
close all

img=reshape(1:64,8,8);
image(img);colormap(gray(64))
axis square
axis off

for i=1:200
    paintpots = rand(64,3);
    colormap(paintpots);
    drawnow
end