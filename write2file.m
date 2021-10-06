function write2file(sex,age,category,product)
%This function writes user-searched data in a file. It creates a big data
%IOT analyze the user's preferences. 
fid = fopen('data.txt','a');
if fid == -1
    disp('File open not successful')
else
    fprintf(fid, '%s %d %s %s\r\n', sex, age, category, product); %\r\n = newline

closers = fclose(fid);
    if closers == 0
        disp('File close successful')
    else
        disp('File close not successful')
    end
end
end