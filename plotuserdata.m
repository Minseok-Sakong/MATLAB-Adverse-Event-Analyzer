function plotuserdata()
%Plot user preferences data
load category.mat %String arrays of product categories
load maledat.dat
load femaledat.dat
cat = categorical(a1);
subplot(2,1,1)
bar(cat,maledat,'stacked')
title('Male Preferences')
legend('AGE: 1~20','AGE: 21~30','AGE: 31~40','AGE: 51~ ');
subplot(2,1,2)
bar(cat,femaledat,'stacked')
title('Female Preferences')
legend('AGE: 1~20','AGE: 21~30','AGE: 31~40','AGE: 51~ ');
