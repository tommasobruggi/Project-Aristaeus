west = csvread('January_temp_avg.csv');
east = csvread('EastJan_temp_avg.csv');

fullmap = [west east];

%heatmap(fullmap);
%grid off;

csvwrite('Jan_fulltemp_avg.csv', fullmap);