
%% qu 6.1
% looked it over, IF 2/14/2018

n = 101;  
[X,Y] = meshgrid(linspace(-1,1,n)); 
X(30:40, 10:90)=.1; 
X(60:70, 10:90)=.8; 
imagesc(X); 
axis off 
colormap(gray(256)) 
saveas(gcf,'Illusion_ColorConstancy_1.jpg');

%% qu 6.2

n = 701; 
nseg=6;  
radius=.7;  
[X,Y] = meshgrid(linspace(-1,1,n));  


theta = atan2(Y,X)./pi; 
theta=mod(theta*nseg, 1);

radiusimage=sqrt(X.^2+ Y.^2); 
aperture=NaN(size(radiusimage)); 
aperture(radiusimage<radius)=1; 
aperture(radiusimage>=radius)=0; 
illusion=theta.*aperture; 
imagesc(illusion); 
axis square; axis off 
colormap(gray(256)) 
saveas(gcf,'peripheraldrift1.jpg')
