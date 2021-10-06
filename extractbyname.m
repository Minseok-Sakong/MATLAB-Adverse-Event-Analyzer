function a = extractbyname(list, name)
% This function extracts structures, which contains "name" on their product
% names. These structures are used as a cache file IOT save time of
% searching
persistent number;
persistent mystruct;
j = 0;
if isempty(mystruct)
    mystruct = list(1);
    number = 1;
    for i = 1:length(list)
    if strfind(list(i).name,upper(name)) ~= 0
        mystruct(number) = list(i);
        number = number +1;
    end
    end
else
    b = [mystruct.name];
    if any(contains(b,upper(name))) % check whether it's redundant data
    else
    for i = 1:length(list)
     
        if strfind(list(i).name,upper(name)) ~= 0
        mystruct(number) = list(i);
        number = number +1;
        end
    end
    end
end
a = mystruct;
end
