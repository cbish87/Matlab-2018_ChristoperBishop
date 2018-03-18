
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
illusion;
figure(1);
imagesc(illusion); 
axis square 
axis off 
colormap(gray(256)) 
saveas(gcf,'peripheraldrift1.jpg')

[X,Y] = meshgrid(linspace(-1,1,n));  

figure(2)
F=mod(atan2(X, Y), pi/6);
figure(2)
imagesc(F); colormap(gray(256))

%%

% First create the image.
imageSizeX = 640;
imageSizeY = 480;
[columnsInImage, rowsInImage] = meshgrid(1:imageSizeX, 1:imageSizeY);
% Next create the circle in the image.
centerX = 320;
centerY = 240;
innerRadius = 50;
outerRadius = 140;
array2D = (rowsInImage - centerY).^2 ...
    + (columnsInImage - centerX).^2;
ringPixels = array2D >= innerRadius.^2 & array2D <= outerRadius.^2;
% ringPixels is a 2D "logical" array.
% Now, display it.
figure(4)
image(ringPixels) ;
    colormap([1 1 1; 0.5 0.5 0.5])
