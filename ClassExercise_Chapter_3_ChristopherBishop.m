%% Questions for Chapter 3

%Q 3.1: Basic calculations.

%Create the following matrix mat:

mat=[ 1 2 3 4; 4 5 6 7; 8 9 10 11]; 

%If you look at the size of mat you will see that it has 3 rows and 4 columns.

size(mat)

%a) Before typing anything in, guess what will result from:

% mat + 1
% it will add one to everyone position in the matrix 
%b) Guess what you get when you type:

% 10-mat
% it will minus 10 from every position in the matrix 
% c) Use the command min to calculate the minimum of each column of mat
min(mat)
% d) Use min and the transpose (�) to calculate the minimum of each row of mat
min(mat(1))
min(mat(2))
min(mat(3))

% e) Use min twice to calculate the minimum of the entire matrix
min(min(mat))
%% Q 3.2: Calculations with vectors.

% Define the following vectors:

v1 =[1 2 3 4];
v2 =[1 0 1 0];

%Before typing anything in, guess what will result from:
% a) v1 + v2  it will add the numbers to each corresponding place
% b) v1 .* v2 multiply each corresponding spot together 
% c) sum(v1.*v2)totaly sum of both multiplied together 
% d) v1 * v2' drawing a blank here 

%% Q 3.5: More calculations with vectors

% Calculate the sum of all odd numbers from 1 to 99
sum(1:99)
%% Q 3.6: Making pi

% The number ? can be expressed as:

% ?= ?(6/1^2 +6/2^2 +6/3^2 +6/4^2 +6/5^2 +?)

% We�ll approximate this in the following steps:

% a) Generate a vector �a� that counts in steps of 1 from 1 to 10,000 (don�t forget the semicolon to suppress the output!)
  vect=1:10000
% b) Square every element of that vector and call this vector �b�.
  vectb=vect.^2;
% c) Create a new vector (�c�) that is 6 divided by every element of vector b
 vectc=6./vectb;
% d) Create a scalar �d� that is the sum of vector �c�
 d=sum(vectc);
% e) Take the square root of scalar d.
e=sqrt(d)
% f) For extra credit, try to do to this all in a single line!
% oh boy, 
% Q 3.7: Inner and Outer Products
% 
% Let the vector �heights� be a list of heights in inches:

heights = [66 68 65 70 65]';
%
% a) Find the average of these heights by adding the heights and dividing by 5
sum(heights)/5
% b) use Matlab�s �mean� function to get the same number
mean(heights)
% Let the vector V2 be: 

w = [1 1 1 1 1]/5;
% 
% c) Show that the inner product of w and heights is the same as the mean. Do you see why?
w*heights  % i think so, because it multiplies piecewise then divides after 
% d)  Now let 
w = [1 1 1 0 1]/4;
% 
% Show that the inner product of w and heights is the mean height after taking out the fourth value.
w*heights