clear 

load '/Users/Xavier/Documents/Mes Documents/Cours_nsave/Enseirb-E3/pr310/store2.txt'
load '/Users/Xavier/Documents/Mes Documents/Cours_nsave/Enseirb-E3/pr310/store5.txt'
load '/Users/Xavier/Documents/Mes Documents/Cours_nsave/Enseirb-E3/pr310/store6.txt'
load '/Users/Xavier/Documents/Mes Documents/Cours_nsave/Enseirb-E3/pr310/data_out_light.txt'

N = 4000000;
%N = 22361048;
t = 1:N;

 results = zeros(N, 1);
 for i = 1:3040
    if data_out_light(i)< N
        results(data_out_light(i)) = 1*0.1;
    end
end

store6 = store6*0.1;
for i = 1:6000
    store6(i) = 0;
    results(i) = 0;
end

for i = 1:N
    j = i+1;
    if store6(i) == 0.1
        while(store6(j) == 0.1)
            store6(j) = 0;
            j = j + 1;
        end
    end
end

sum_store6 = sum(store6)*10;
sum_results = sum(results)*10;

%end
%store = ones(N);
%for i = 300001:300000+N
%    store(i-300000, 1) = store2(i, 1);
%end

subplot (2, 1, 1), plot(t, store2, t, store5, t, results);
subplot (2, 1, 2), plot(t, store2, t, store5, t, store6);
