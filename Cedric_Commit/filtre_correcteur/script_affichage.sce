clear all;
clc;
close;
offset = 982;
data = read("data.txt", 4096 + offset, 1);
data2 = read("filtre.txt", 4096 + offset, 1);

plot(data(offset : length(data)), 'b') ;
plot(data2(offset : length(data)), 'g');
