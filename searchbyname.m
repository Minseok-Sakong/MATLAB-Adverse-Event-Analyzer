function [a,b,c] = searchbyname(list, name)
mycell = {};
mycell2 = {};
mystr = string;
for i = 1:length(list)
    if strfind(upper(list(i).name),upper(name)) ~= 0
        mycell{end+1}=char(list(i).name);
        mycell2 = list(i).symptomlist;
        mystr = list(i).category;
    end
end
a = mycell; %Product names
b = mycell2; % List of symptoms
c = mystr; % Product category
end
        