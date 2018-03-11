%This Matlab file is to be used to create graphs comparing the sales of different store locations of Better
%Buy (Home electronics store). And to identify the category that produces the highest sales at each location. 

%Import quarterly data from each store

[~, headers_B]=xlsread('Bothell_Sales_Dec17-Feb18.xlsx', 'A1:H1');
[~, ~, data_B]=xlsread('Bothell_Sales_Dec17-Feb18.xlsx', 'A2:H91');
[~, headers_K]=xlsread('Kirkland_Sales_Dec17-Feb18.xlsx', 'A1:H1');
[~, ~, data_K]=xlsread('Kirkland_Sales_Dec17-Feb18.xlsx', 'A2:H91');
[~, headers_R]=xlsread('Renton_Sales_Dec17-Feb18.xlsx', 'A1:H1');
[~, ~, data_R]=xlsread('Renton_Sales_Dec17-Feb18.xlsx', 'A2:H91');

%Create store tv sales comparison graphs by month. 
B_month_header=find(strcmp(headers_B,'month'));
B_tv_header=find(strcmp(headers_B,'tv'));

K_month_header=find(strcmp(headers_K,'month'));
K_tv_header=find(strcmp(headers_K,'tv'));

R_month_header=find(strcmp(headers_R,'month'));
R_tv_header=find(strcmp(headers_R,'tv'));

%Bothell Summed tv sales by month.

B_Dec=(data_B(:, B_tv_header)),
B_Dec_total=sum([B_Dec{find(strcmp(data_B(:, B_month_header),'Dec'))}]);

B_Jan=(data_B(:, B_tv_header)),
B_Jan_total=sum([B_Jan{find(strcmp(data_B(:, B_month_header),'Jan'))}]);

B_Feb=(data_B(:, B_tv_header)),
B_Feb_total=sum([B_Feb{find(strcmp(data_B(:, B_month_header),'Feb'))}]);

%Kirkland Sumed tv sales by month.
K_Dec=(data_K(:, K_tv_header)),
K_Dec_total=sum([K_Dec{find(strcmp(data_K(:, K_month_header),'Dec'))}]);

K_Jan=(data_K(:, K_tv_header)),
K_Jan_total=sum([K_Jan{find(strcmp(data_K(:, K_month_header),'Jan'))}]);

K_Feb=(data_K(:, K_tv_header)),
K_Feb_total=sum([K_Feb{find(strcmp(data_K(:, K_month_header),'Feb'))}]);

%Renton Sumed tv sales by month.
R_Dec=(data_R(:, R_tv_header)),
R_Dec_total=sum([R_Dec{find(strcmp(data_R(:, R_month_header),'Dec'))}]);

R_Jan=(data_R(:, R_tv_header)),
R_Jan_total=sum([R_Jan{find(strcmp(data_R(:, R_month_header),'Jan'))}]);

R_Feb=(data_R(:, R_tv_header)),
R_Feb_total=sum([R_Feb{find(strcmp(data_R(:, R_month_header),'Feb'))}]);

%Plot Graph
f=figure(1);
set(f, 'Name','Tv Sales by Store Location');

% bar graph
a1=subplot(1,1,1); 
set(a1, 'FontName', 'Geneva');
tvsales = ([B_Dec_total K_Dec_total R_Dec_total;B_Jan_total K_Jan_total R_Jan_total;B_Feb_total K_Feb_total R_Feb_total]);
bar(tvsales);
labels={'Dec' 'Jan' 'Feb'};
set(gca,'XTick', [1:3]);
set(gca,'XTickLabel', labels);
xlabel('Month');
ylabel('Total Sales');
legend('Bothell','Kirkland','Renton') 
t=title('TV Sales', 'FontAngle', 'normal');

%Create individual sales Comparison at the Bothell Store
B_tv_header=sum(find(strcmp(headers_B,'tv')));
B_game_console_header=find(strcmp(headers_B,'game_console'));
B_computer_header=find(strcmp(headers_B,'computer'));
B_laptop_header=find(strcmp(headers_B,'laptop'));
B_tablet_header=find(strcmp(headers_B,'tablet'));
B_phones_header=find(strcmp(headers_B,'phones')); 

B_tv=data_B(:, B_tv_header)
B_tv_total=sum([B_tv{:}]);

B_game_console=data_B(:, B_game_console_header)
B_game_console_total=sum([B_game_console{:}]);

B_computer=data_B(:, B_computer_header)
B_computer_total=sum([B_computer{:}]);

B_laptop=data_B(:, B_laptop_header)
B_laptop_total=sum([B_laptop{:}]);

B_tablet=data_B(:, B_tablet_header)
B_tablet_total=sum([B_tablet{:}]);

B_phones=data_B(:, B_phones_header)
B_phones_total=sum([B_phones{:}]);

%plot
%Plot Graph
f2=figure(2);
set(f2, 'Name','Bothell Fourth Quarter Sales ');

% bar graph
a1=subplot(2,2,1); 
set(a1, 'FontName', 'Geneva');
bothellsales = ([B_tv_total;B_game_console_total;B_computer_total; B_laptop_total;B_tablet_total;B_phones_total]);
bar(bothellsales);
f2labels={'TVs' 'Game Consoles' 'Computers' 'Laptops' 'Tablets' 'Phones'};
set(gca,'XTick', [1:6]);
set(gca,'XTickLabel', f2labels);
xtickangle(90);
xlabel('Electronics');
ylabel('Total Sales');
t=title('Bothell Fourth Quarter Sales', 'FontAngle', 'normal');
