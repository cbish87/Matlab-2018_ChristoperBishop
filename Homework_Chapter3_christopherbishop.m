%% Homework Chapter 3 

%% Q 3.1: Basic calculations.
mat=[ 3 4 5 ; 6 7 8; 9 10 11];

% a) Calculate the max of mat along each row.
max(mat')
% b) Calculate the overall mean of mat.
mean(mat(1:9));
sum(3:11)/9;

% c) Square each element of mat, and calculate the mean along each column.
mat.*mat
mean(ans);
%% Q 3.2: more basic calculations.
 
% a) Calculate the mean of the vector: vect=[ 1 4 9 16 25 � 225]
mean([1:15].^2)

% b) Calculate the mean of the even numbers of vect.
mean([2:2:15].^2)

%% Q 3.7: Inner and Outer Products

% You are examining generosity behavior in 12 three year olds. 
% The number of times each child is observed to engage in a sharing behaviour 
% with his/her peer is described by the vector: 
num_shares=[1   1   3  19  10   3  16  14   0   1   1  29]; 

% The number of interactions each 3 year old has with a peer during the
% observation period is described by a second vector: 
num_interact = [3   2  21  31  37   5  23  19   3  13   6  32]; 

% a) Find the average (across subjects) of the number of sharing behaviours 
% (av_shares) by adding all the values in num_shares and dividing by 12
av_shares=sum(num_shares)./12

% b) use Matlab�s �mean� function to get the same number 
mean(num_shares)
% c) Now, create the vector: 
w

% Show that the inner product of w and num_shares is the same as av_shares. 
% Try to use words to explain why. 
num_shares*w;

% d) Use pointwise division to get the probability of sharing on a given peer 
% interaction for each child (prob_share) 
prob_share=num_shares./num_interact
% e) Show that the inner product of prob_share and num_interact is the same 
% as the sum of num_shares using matlab code. 
sum(prob_share.*num_interact) 
sum(num_shares)
% Use words to explain why
%problem_share is the inverse of num_interact 