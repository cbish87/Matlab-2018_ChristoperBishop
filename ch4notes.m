%%

mat(:, :,1)=[0 1 1 0 ; 0 0 0 0 ; 0 0 0 1; 0 1 0 0 ; 0 0 1 0 ];
mat(:, :, 2)=[ 1 0 1 1; 1 0 1 1 ; 0 0 0 0 ; 0 1 0 0 ;0 1 1 1]; 
mat(:, :, 3)=[0 0 0 0 ; 1 1 0 1; 0 0 0 0 ; 0 0 0 0 ; 0 0 0 0 ]; 





%% 
fakefmri=randn(64,64, 28, 80);

ontimepts=[1:10, 21:30, 31:40, 41:50, 61:70];

fakefmri(5:10, 7:17, 5:8,ontimepts )=fakefmri(5:10, 7:17, 5:8,ontimepts)+1;

timepts=squeeze(fakefmri(6, 6, 7,: )); 
size(timepts)

plot(1:80, timepts)
imagesc(fakefmri(:, :, 7, 22))

%%
mat1=zeros(5,4);
mat2=mat1
mat2(1:5,3)=1

