clear 

%load '/Users/Xavier/Documents/Mes Documents/Cours_nsave/Enseirb-E3/pr310/data_in.txt'
load '/Users/Xavier/Documents/Mes Documents/Cours_nsave/Enseirb-E3/pr310/data_out_light.txt'
load '/Users/Xavier/Documents/Mes Documents/Cours_nsave/Enseirb-E3/pr310/store6.txt'

N = 400000;
t = 1:N;

for i = 1:900
    store6(i, 1) = 0;
end

results = zeros(N, 1);
for i = 1:3040
    if data_out_light(i)< 400000
        results(data_out_light(i)) = 1;
    end
end

a = sum(store6);
b = sum(results);

%end
%store = ones(N);
%for i = 300001:300000+N
%    store(i-300000, 1) = store2(i, 1);
%end

figure,
subplot(1, 2, 1), plot(t, results);
subplot(1, 2, 2), plot(t, store6);
