function struct1 = getthedata()
%gather all of the data from the excel file
[~,txt,~] = xlsread('CAERS-ASCII-2004-2018Q2.csv', 'E:E'); %E Column: Product name
for i = length(txt):-1:2 %Preallocate arrays of structures from backward
    product(i-1).name = string(strtrim(txt{i}));
end
[~,txt,~] = xlsread('CAERS-ASCII-2004-2018Q2.csv', 'G:G'); %G Column: Product category
for i = length(txt):-1:2
    product(i-1).category = string(strtrim(txt{i}));
end
[~,txt,~] = xlsread('CAERS-ASCII-2004-2018Q2.csv', 'L:L'); % L Column: Reported symptoms
for i = length(txt):-1:2
    a = string(txt(i));
    symptomlist = strsplit(a,",");
    for j = length(symptomlist):-1:1
        product(i-1).symptomlist(j) = strtrim(symptomlist(j));
    end
end
struct1 = product;
end