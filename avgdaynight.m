day_temp = csvread('EastMay_daytimetemp_avg.csv');
nigh_temp = csvread('EastMay_nighttimetemp_avg.csv');

avg_temp = (day_temp + nigh_temp)/2;

heatmap(avg_temp);
grid off;

csvwrite('EastMay_temp_avg.csv', avg_temp);