%SineinApeture
%look up sinusoids
clear all
close all

amp=1;
rad=pi;
x=linspace(-pi,pi, 100);
sf=6;
backLum=128.5
sinewave =sin(x * sf)
plot(x,sinewave)

oneM=ones(size(sinewave));
sinewave2D=oneM' * sinewave;
sinewave2D_scaled=((sinewave2D+1)*127.5)+1
image(sinewave2D_scaled) ; 
colormap(gray(256));




image(sinewave2D_scaled);
colormap(gray(256))

[X, Y] =meshgrid(linspace(-pi, pi, 100));
ind=find(X.^2+Y.^2>rad^2);
sinewave2D_scaled(ind)=128.5
image(sinewave2D_scaled);
colormap(gray(256))

%% build the array

naps=2;
sep=50;
bigMatSize=[(naps+1)*sep]+[length(x)*naps];
bigMat= backLum * ones(bigMatSize);
stpt=[sep (sep*2)+length(x)];



bigMat(sep:sep+length(x)-1, sep:sep+length(x)-1)=...
    sinewave2D_scaled;

imagesc(bigMat)
