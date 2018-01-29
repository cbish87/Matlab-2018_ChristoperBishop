%%making matrices 
%provide examples of ways to make matrices 
%written IF 1-11-2018

mat1=zeros(5,4);
mat2=mat1;
mat2(1:5,3)=1

mat2=mat1;
mat2(1:end,3)=6

mat2=mat1;
mat2(:, 3)=6

mat2=mat1;
mat2(4, :)=1

%% now for somehting interesting

mat=zeros(4);
for i=1:4
    mat(i, i)=i
    pause
end

%%

mat=zeros(6);
for i=1:6
    mat(i,:)=[-2 0 -1 1 2 3]
    pause
end 
    toc 
    
 %% 
 
 mat=zeros(5);
 for i=1:5
     mat(i, :)=[0 0 1 1 0]+i 
 end 
 
 %% 
 
 
    %%
 
 mat=zeros(3, 4)
 for i=1:3
     for j=1:4
         mat(i, j)=i+j 
         
     end 
     
 end 
 %%
 mat=zeros(3,4)
 for i=1:3
      mat (i, :)=((i-1)*4)+[1:4]; 
 end
 mat
 v=1:12;
 mat2=reshape(v, 4, 3)'
 
 mat= [ 1 2 3; 4 5 6; 7 8 9];
 vect=mat(:)
     
     %% repmat
     
     
     
x=[1 2 3 4 5]
size(x)
x=repmat(x, 3, 2)
size(x)

x=[ 2 3 4; 5 6 7];
size(x) 
y=repmat(x, 3, 2)

%% 
% ind=sub2ind(size(mat), 3, 2)
% [r, c]=ind2sub(size(mat), 6)
mat45=reshape(v, 4, 5);
mat210=reshape(v, 2, 10);
v

%%
d=0 
d==0 
n1=2 
n2=2
n1~=n2

%%
n1= 1 
n2 = 2
n3= 3
n1<n2 && n

%  false or positive being 0 or 1 
%  > optional
%  < optional 
%  || means or 
%  && means and 

%%

rmat=rand(10,10);
rmat2=rand(10,10);

for iRow=1:size(rmat,1) 
    for iCol=1:size(rmat, 2)
        if rmat(iRow, iCol)<rmat2(iRow,iCol)
            rmat(iRow,iCol)=rmat2(iRow,iCol);
        end 
    end
end
    
%%
n=1

if n<0 
    disp('bye bye sweetie');
elseif n 
    disp('hi there cutie pants')
else 
    disp(' hi there deerie');
end

%%

if n<=-.6
    disp(' I love calvin')
elseif n<=0
    disp('garfield suks')
end

%%
n=0;
while n<1
    n=randn(1);
    disp(n)
end 

%%
tic
while toc<3
;
end

%%
% 1/0 will pop out inf
% isinf(data) will tell you if is there and where 



%%

x= [6 7 8 Inf nan 0 -Inf 0]
isfinite(x)
