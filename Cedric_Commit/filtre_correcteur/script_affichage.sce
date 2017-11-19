clear all;
clc;
close;
offset = 982;
data = read("data.txt", 4096 + offset, 1);

plot(data(offset : length(data)));
