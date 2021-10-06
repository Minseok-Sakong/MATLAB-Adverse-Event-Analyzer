function saveplotdatam(sex, age,category)
%This function writes user-searched data in a mat-file. It is used to
%plot user product preferences, categorized by gender and age.
load category.mat
if (string(sex) == "MALE")
load maledat.dat
count = 0;
if (age <= 20)
    i = 1;
elseif ((age > 20) && (age <= 30))
    i = 2;
elseif ((age > 30) && (age <= 40))
    i = 3;
else
    i = 4;
end
for j = 1:length(a1)
if category == a1(j)
    count = j;
    maledat(count,i) = maledat(count,i)+1;
else
    
end
end
save maledat.dat maledat -ascii
elseif (string(sex) == "FEMALE")
load femaledat.dat
count = 0;
if (age <= 20)
    i = 1;
elseif ((age > 20) && (age <= 30))
    i = 2;
elseif ((age > 30) && (age <= 40))
    i = 3;
else
    i = 4;
end
for j = 1:length(a1)
if category == a1(j)
    count = j;
    femaledat(count,i) = femaledat(count,i)+1;
else
    
end
end
save femaledat.dat femaledat -ascii
end
end