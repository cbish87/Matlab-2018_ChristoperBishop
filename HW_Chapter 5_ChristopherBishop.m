%5.1 Union Jack 
%Fill in the missing bits of code to make the series of figures


clear all
close all
flagsize=15;
saltire=zeros(flagsize);

for i = 1:flagsize
    saltire(i, i) = 1;
    saltire((flagsize+1)-i, i) = 1;
end

figure(1)
image(saltire+1)
%insert
cmap=[ 0 0 1 ; 1 1 1 ];
colormap(cmap)

figure(2)
image(saltire+1)
%insert
cmap= [ 1 0 0 ; 1 1 1 ];
colormap(cmap)

george=zeros(flagsize);
george(ceil(flagsize/2), :)=1;
%insert
george(: ,ceil(flagsize/2))=1;

figure(3)
image(george+1)
cmap=[ 1 1 1 ; 1 0 0];
colormap(cmap)

union=(saltire+(2*george))+1;
union(union>3)=3;
figure(4)
image(union)
%insert
cmap(1, :)= [ 0 0 1];
cmap(2, :)= [ 1 0 0];
cmap(3, :)= [ 1 0 0];
colormap(cmap)

bars=[ceil(flagsize/2)-1 ceil(flagsize/2)+1];
union(bars, :)=union(bars, :)+3;
union(:,bars)=union(:, bars)+3;
union(union>6)=union(union>6)-3;
% convert all values greater than 6 to 6?
figure(5)
image(union)
%insert
cmap(4, :)= [ 1 1 1];
cmap(5, :)= [ 1 1 1];
cmap(6, :)= [ 1 0 0];
colormap(cmap);

% this is fine, but Geoff will have shown you a more elegant way. Have a go
% trying to implement it
for i=1:flagsize
    for j=1:flagsize
        if i==j-1 | j==i-1 ... 
                || i==j+1 || j==i+1
            if union(i, j)<6
                union(i, j)=5;
                %insert
                union(i, (flagsize+1)-j)=5;
            end
        end
    end
end
figure(6)
image(union)
colormap(cmap)
axis off; axis equal




%5.2 Indexing into a linear array in real world co-ordinates
%Miguel collects data for an EEG experiment.  Each session of data consists of 30 trials, each lasing 5s. 
%The EEG machine records data every 2ms. Strangely his data looks like a perfect sinusoid, 
%with 0 mean normally distributed noise. 

ntrials=30;
durtrial=5*1000;
timevec=0:2:(durtrial*ntrials);
data=sin((2*pi* timevec)/(durtrial))+.1*randn(size(timevec));
plot(timevec, data, '-')

%a)  What is the mean response during all the data points that are within the first ½ second of every trial 

% so what you did was just the first 1/2 second of all 30 trials

data_reshaped=reshape(data(1:end-1), 2500, 30);
plot(timevec(1:250), data(:, 1:250), '.')
mean(mean(data_reshaped(1:250, :)))
%The mean is 0.3038

%b) What is the mean response during the interval 2-2.5s of each trial?
% so try fixing this

plot(timevec(1,1000:1250), data(1,1000:1250), '-')
mean(data(1,1000:1250))
%The mean is 0.3149

%c) during which timepoints does the EEG response have values greater than 0.9?

dataC=data;
dataC(dataC<=0.9) = NaN;;
plot(timevec(1,~isnan(dataC)), dataC(1,~isnan(dataC)), '.');
%See plot

%d) during which timepoints does the EEG response have values between 0.7 and 0.8?

dataD=data;
dataD(dataD<=0.7) = NaN;
dataD(dataD>=0.8) = NaN;
plot(timevec(1,~isnan(dataD)), dataD(1,~isnan(dataD)), '.');
%See plot

%(obviously you will get different answers each time because your data will vary each time).

%5.3 Indexing into a matrix using real world co-ordinates
%Sam Lin collects data on 70 rats. 20 of them were duds and their data were thrown away. 

ratID=randperm(70); ratID=sort(ratID(1:50)); 

%On the remaining rats he collects 10000 trials, and he calculates the % correct across each bin of 100 trials.

shufflevect=randperm(length(1:70))
ratID=shufflevect; ratID=sort(ratID(1:50)); 
binsteps=1:100:10000;
[X, Y]=meshgrid(1:length(ratID), 1:length(binsteps));
per=Y+randi(10, size(Y))-5;
per(per>100)=100; per(per<0)=0;

%a) image the rats performance in a matrix with trials along the x axis and 
%rats along the y axis using a colormap that varies between white for 100% 
%correct and black for 0% correct (not using imagesc)

image(ratID, binsteps, per)
ylabel('trial')
xlabel('rat ID')
cmap = (gray((64)))
colormap(cmap)

%b) change the colormap so that values above 90% are white and values below 10% are black.

% need to actually change the cmap
cmap = gray(100)
cmap(1:10,:) = 0;
cmap(91:100,:) = 100;
colormap(cmap)
colorbar;

%c) how many rats performed above 66% correct between trials 6001-7001?

perC = per;
perC(find(binsteps>7001), :) = NaN; % each bin has 100 trials and you need to put the Nans in perC
perC(find(binsteps<6001), :) = NaN;
imagesc(perC)
tmp=nanmean(perC, 1);
nrats=length(find(tmp>66));


%d) which rats were they?

ratID(find(tmp>66))


%e) How many trials would be needed for 40/50 rats to be performing above 80%.


per80=per>80;
numover80=sum(per80,2);
minTover80=find(numover80>40);
minTover80(1);
binsteps(minTover80)
%f) It turns out that for the rats with even ID numbers (2, 4, 6 10 etc.) 
%the recording machine was on the blink for an interval between the 5678th trial 
%and the 7533rd trial. Convert those numbers to NaN.
badRats=find(mod(ratID,2)==0);
per( 56:76, find(mod(ratID,2)==0))=NaN;

figure(3)
clf
image(binsteps,size(ratID),per');
colormap(gray(100));
xlabel('Trial');
ylabel('Rat');
colorbar
