% BreakfastCereal.m 
% 
% this program provides examples of fun things you can do 
% with cereal boxes 
% inspired by Geoff's misspent childhood 
% at the breakfast table 
% 
% written by IF 3/2007 % minor modifications 9/2011





frosted='FROSTED FLAKES';
cheerios='CHEERIOS';

frosted_scrambled=frosted;

%question 2.1
cheerios(1)='O'
cheerios(5)='P'
str='CHEMISTRY'

str([1 8])='OB'
str1='MACARONI AND CHEESE'
str1([3 14 8])='OOR'

%question 2.2
str1='MACARONI AND CHEESE'
id1=[1 2 7 13:19];
str1(id1)
id2=[15 16 5 9 1 8 7 12 9 8 18 9 3 15 8 11 16 18 16];
str1(id2)

%question 2. 3 
%a. 
vect1=linspace(1,10,10)
vect1= (1:1:10)
% b. 
vect2=linspace(10,18,5)
vect2=(10:2:18)
% c. 
vect3=linspace(19,15,5)
vect3=(19:-1:15)
% d. 
vect4=linspace(10,-4,8)
vect4=(10:-2:-4)
% E. 
vect5=linspace(0, 15.7080, 6)
vect5=(0:3.1416:15.7080)
vect5=(0:pi:15.7080)

% question 2.4 
%a. 
str = 'aaaaaaaaaaaaaaaaaaaa';
str(3:3:end)='c'
%b. 
str(2:3:end)='b'
%c. 
disp(str(3:3:end))
%d. 
str(4:6)='def'
%e. 
str([4:6 10:12 16:18])='defdefdef'
%f. 
str([6 12 18])
% question 2.5
%a. 
timepts=(12:1.23:1000);
timepts=timepts(1:40)

%b. 
timepts(5)

%c. 
timepts(end)

% question 2.6
%a. 
resp='rererererererererererererererererererere';

resp(5)='k'; 
disp(resp(5))
%b. 
resp(5)='r'
%c. 
disp(resp(2:2:end))

%question 2.7
vect8 = 12:-1:1
%a. 
vect8(1:12)
%b. 
vect8(12:-1:1)
%c. 
vect8([10 12 9 12 8 4])
%d. 
vect8(1:2)
%e. 
vect8(vect(1:2))
%f.
vect8(vect8)

%g. 
vect8(vect8(vect8))







