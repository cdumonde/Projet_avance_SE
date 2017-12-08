clear all;
clc;
close;
offset = 982;
stacksize('max');
size_tab = -1;
y2 = read("Detection.txt", size_tab, 1);

yCedric = 0;
index = 1;

yBornat = read("detects.txt", -1, 1);
zero = 1;
for i = 10000 : length(y2)
    if (y2(i) > 0) then
        if (zero == 1) then
          yCedric(index) = i;
          index = index + 1;
          zero = 0;  
        end
    else
        zero = 1;
    end
end
xdif = -49:50;
erreur = 0;
tabdif = zeros(100, 1);
offsetBornat = 0;
offsetCedric = 0;
for i = 1 : length(yCedric)
    dif = yCedric(i - offsetCedric) - yBornat(i - offsetBornat)
    if (abs(dif) > 50) then
        if(dif > 0) then 
            offsetCedric = offsetCedric + 1;
        else
            offsetBornat = offsetBornat + 1;
        end
        erreur = erreur + 1;
        //disp("erreur " + string(erreur) + " : " + string(yCedric(i)) + " -- difference : " + string(dif));
    else
        tabdif(dif + 51) = tabdif(dif + 51) + 1;
    end
end
figure();
plot(xdif', tabdif);
disp(erreur);
