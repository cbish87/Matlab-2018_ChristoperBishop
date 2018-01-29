%paintpots.m


pp1=[0 0 0; .25 .25 .25; .5 .5 .5; .75 .75 .75; 1 1 1 ] ; 
pp2=[0 0 1; 1 0 0; 0 1 0; .5 0 1; 1 0 1] ; 
 

% figure(1) image(img) colormap(pp2) image(img') pp2(5, :)=[0 0 0] 

%%using color maps

img=1:10;
figure(1)
pp=ones(10,3);
image(img)
colormap(pp)
axis off;

for i=1:10
    pp(i,:)=i/10;
    colormap(pp)
    pause
end


%% exciting color maps

img=reshape(1:64, 8, 8);
image(img); colormap(gray(64));
axis square
axis off
drawnow
pause

for i=1:200
    PP=rand(64, 3); 
    colormap(pp)
    drawnow;
end

%%

contrast=linspace(0,1,5);
size=2:2:12;
nc=[5 6 5 6 4;
    4 6 8 9 9;
    6 5 7 10 8;
    3 5 8 9 10;
    5 6 9 10 10 ;
    6 5 8 10 9];

image(size, contrast, pc);
colormap(gray(10))
ylabel('contrast')
xlabel('size');

set(gca, 'XTick', contrast)
set(gca, 'XTicklabel', contrast)

pc=100*nc/10;
image(pc)
pcmap=colormap(gray(100));
pcmap(1:50,:)=0;
colormap(pcmap)


%%randomwalk

nsteps=20;
timepts=0:.1:2;

forwardspeed=.3;
noise=0.8;

footposition(1)= 0; 
for i=2:length(timepts)
footposition(i)= footposition(i-1) + ...
                 forward + ...
                 (noise * randn(1, 1));
             if footposition(i)>=stepsize
                 footposition(i:length(timepts)-NaN;
                 i=length(timepts)+1;
             end 

end 


plot(footposition)


