% BreakfastCereal
%
%This program provides examples of fun things you can do with cereal boxes 
%inspired by Geoff's misspent childhood at the breakfast table 

%written by IF 3/2007 
%minor modifications 9/2011


frosted = 'FROSTED FLAKES';
cheerios = 'CHEERIOS';

frosted_scrambled = frosted;

frosted_scrambled(9)='E';
scrambled_cheerios=cheerios
cheerios(1)= 'O';
cheerios(5)= 'P';

frosted_scrambled([6 13])=['F' 'F']
disp(frosted_scrambled);

ff=find('FROSTED FLAKES' == 'F')
