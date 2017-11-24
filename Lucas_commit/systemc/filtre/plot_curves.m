clear 

N = 4000;
t = 1:N;


%load data_in.txt;
load store2.txt;
load store5.txt;
load store6.txt;
load data_out_light.txt;

results = zeros(N);
for i = 1:3040
   if data_out_light(i)> 300000
       if data_out_light(i)< 300000+N
        results(data_out_light(i)-300000) = 0.05;
       end
   end
end
store = ones(N);
for i = 300001:300000+N
    store(i-300000, 1) = store2(i, 1);
end

figure, plot(t, store, t, results);
