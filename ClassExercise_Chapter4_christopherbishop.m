
%%Q 4.1: Making matrices

%Create the following matrices without typing in the numbers by hand:
A = [1     1     1     1     1
     1     1     1     1     1
     2     2     2     2     2
     2     2     2     2     2
     2     2     2     2     2];
 A=ones(5); 
 A(3:5, :)=2;
 A

%m=ones([2,5]; 2*ones[3,5]);
B = [1     1     0     0     1
     1     1     0     0     1
     1     1     0     0     1
     1     1     0     0     1];
 
 B=ones(4, 5);
 B(:, 3:4)=0; 
 B
% or B=zeroes(4, 5);  B(:,[1 2 5])= 1;

C = [1     1     1     1     1
     1     0     0     1     1
     1     0     0     1     1
     1     0     0     1     1
     1     1     1     1     1
     1     1     1     1     1];
 C=ones(6,5);
 C(2:4,2:3)=0;
 C

D = [1     1     1     1     1
     2     2     2     2     2
     3     3     3     3     3
     4     4     4     4     4
     5     5     5     5     5];
 D=zeros(5); 
 for i=1:5 D(:, i)=[1 2 3 4 5]; 
 end
 D
% D=repmat([1:5]', 1, 5) % or [1:5]'*ones(1,5)

E = [2     2     2     2     2     2
     1     2     2     2     2     2
     1     1     2     2     2     2
     1     1     1     2     2     2
     1     1     1     1     2     2
     1     1     1     1     1     2];
% (This one has a Hint if you get stuck, see Hints section)
E=ones(6); 
  for i=1:6     
    for j=1:6         
        if i<=j E(i, j)=2;         
        end
    end
  end

F = [0     5    10    15    20
     0     5    10    15    20
     0     5    10    15    20
     0     5    10    15    20
     0     5    10    15    20];
%(This one has a Hint too.)
F=ones(5); 
for i=1:5 F(:, i)=(i-1)*5; 
end
F
%look up reshape G=reshape(1:25, 5, 5); i for rows j for columns
G = [1     6    11    16    21
     2     7    12    17    22
     3     8    13    18    23
     4     9    14    19    24
     5    10    15    20    25];

 for i=1:5 
     G(:, i)=[1 2 3 4 5]+((i-1)*5); 
 end

H = [1     0     1     0     1     0     1     0
     1     0     1     0     1     0     1     0
     1     0     1     0     1     0     1     0
     1     0     1     0     1     0     1     0
     1     0     1     0     1     0     1     0
     1     0     1     0     1     0     1     0
     1     0     1     0     1     0     1     0
     1     0     1     0     1     0     1     0];
H=zeros(8); 
H(:, 1:2:end)=1; 
H

 
I = [1     0     0     0     0     0     0     0
     0     0     0     0     0     0     0     0
     0     0     1     0     0     0     0     0
     0     0     0     0     0     0     0     0
     0     0     0     0     1     0     0     0
     0     0     0     0     0     0     0     0
     0     0     0     0     0     0     1     0
     0     0     0     0     0     0     0     0];

I=zeros(8); 
  for i=1:2:8     
    for j=1:2:8
        if i==j I(i, j)=1;        
        end
    end
  end
  
  % another alternative J= zeros(8); for i=1:2:8  J(i,i)=1   end 
  


 
 
 J = [0     1     2     3     4
     1     2     3     4     5
     2     3     4     5     6
     3     4     5     6     7
     4     5     6     7     8];

J=ones(5); 
for i=1:5 J(:, i)=[0 1 2 3 4]+(i-1); 
end
J

 
 K = [1     2     3     4     5
     2     4     6     8    10
     3     6     9    12    15
     4     8    12    16    20
     5    10    15    20    25];

for i=1:5 K(i, :)=i:i:5*i; 
end
K

 
 L = [1     2     3     4     5
     6     7     8     9    10
    11    12    13    14    15
    16    17    18    19    20
    21    22    23    24    25];

for i=1:5 L( i, :)=[1:5]+((i-1)*5); 
end
L

 
%% Q 4.2: 3d matrices

% a) Create a 3x3x3 matrix of zeros and set the very middle of the 3-d matrix to be a value of 1. 
M=zeros(3, 3, 3); 
M(2, 2, 2)=1

% b) Create a 5x5x5 matrix of zeros and set the middle 3x3x3 cube to 1.
M=zeros(5, 5, 5); 
M(2:4, 2:4, 2:4)=1

%% Q 4.3: sub2ind and ind2sub

% a)  Suppose you have a 4x3 matrix (4 rows and 3 columns).  What is the index into the element that is in the 3rd row and 2nd column?
sub2ind([4,3],3,2)

% b) For the same size matrix, what is the row and column for the element with an index of 7?
 [i,j] =ind2sub([4,3],7)

%% Q 4.4: logical operations

% a) Write a script so that if a variable 'x' is positive it prints the string 
% 'x is positive'
% And if x is negative the script prints the string
% 'x is negative'
x=1
y=0
z=0
if x>2
    disp('x is positive')
elseif x<2
    disp('x is negative')
end

% b) Write a statement that is true if the variable 'x' is either less than 2 or greater than pi.
x<2 || x>pi

% find 

% c) Write a statement that is true if either x is greater than 2 and y is less than 4, or if z is equal to zero.
(x>2 && y<4) || z==0 

%% Q 4.5 While loops

%Write a script that repeatedly rolls two dice using this command:

roll = ceil(rand(1,2));

count=1;
roll = ceil(rand(1,2)*6);



% and counts the number of rolls until [1,1] (�snake eyes�) comes up.

while sum(roll) >2

count = count+1;
roll = ceil(rand(1,2)*6);
end
disp(['Snake eyes after ',num2str(count),' rolls.']);


