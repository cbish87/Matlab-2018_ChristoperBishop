%%sine ap

frame.apsize = 100; % # of pixels in aperture
frame.backLum = 128.5;

stim(1).amp = .5; stim(1).sf=3;
stim(1).orient=45; stim(1).type='spiral';
stim(1).rad=3; stim(1).ap= 'circular';
stim(1).npix=frame.apsize;

stim(2).amp = 1; stim(2).sf=2;
stim(2).orient=90; stim(2).type='spokes';
stim(2).rad=3; stim(2).ap= 'circular';
stim(2).npix=frame.apsize;

stim(3).amp = 3; stim(3).sf=4;
stim(3).orient=90; stim(3).type='radial';
stim(3).rad=3; stim(3).ap= 'circular';
stim(3).npix=frame.apsize;

stim(4).amp = .5; stim(4).sf=2;
stim(4).orient=-45; stim(4).type='grating';
stim(4).rad=2; stim(4).ap= 'gaussian';
stim(4).npix=frame.apsize;

%%


bigMatSize = [(frame.aNum+1)*frame.apSep] + ...
       [frame.apsize*frame.apNum];
bigMat=frame.backLum* ones(bigMatSize);
stpt=[frame.apsep (frame.apsep*2)+frame.apsize];
for i=1:frame.apNum
    for j=1:frame.apNum
        rad=(i*j)/2; sf=3+(mod(i+j,2)*3);
        [ sw2D ] = make2Dsinewave( stim(i, size_ap, sf);
        [ sw2D ] = putinaperture( sw2D,rad, backLum)
            bigMat(stpt(i):stpt(i)+size_ap-1, stpt(j):stpt(j)+size_ap-1) = sw2D;
    end
end
imagesc(bigMat)






