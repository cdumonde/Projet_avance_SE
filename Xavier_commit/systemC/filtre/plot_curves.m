clear 

load '/Users/Xavier/Documents/MesDocuments/Cours_nsave/Enseirb-E3_nsave/pr310/store2.txt'
load '/Users/Xavier/Documents/MesDocuments/Cours_nsave/Enseirb-E3_nsave/pr310/store5.txt'
load '/Users/Xavier/Documents/MesDocuments/Cours_nsave/Enseirb-E3_nsave/pr310/store6.txt'
load '/Users/Xavier/Documents/MesDocuments/Cours_nsave/Enseirb-E3_nsave/pr310/data_out_light.txt'

C = 2;
%N = 4000000;
N = 22361048;
t = 1:N;

 results = zeros(N, 1);
 for i = 1:3040
    if data_out_light(i)< N
        results(data_out_light(i)) = 0.1;
    end
 end

% for i = 1:C:(C*N)
%     store6_1(fix(i/C)+1, 1) = store6(i);
%     store6_2(fix(i/C)+1, 1) = store6(i+1);
%     store5_1(fix(i/C)+1, 1) = store5(i);
%     store5_2(fix(i/C)+1, 1) = store5(i+1);
%     store2_1(fix(i/C)+1, 1) = store2(i);
%     store2_2(fix(i/C)+1, 1) = store2(i+1);
%     store6_3(fix(i/C)+1) = store6(i);
%     store6_4(fix(i/C)+1) = store6(i+1);
%     store5_3(fix(i/C)+1) = store5(i);
%     store5_4(fix(i/C)+1) = store5(i+1);
%     store2_3(fix(i/C)+1) = store2(i);
%     store2_4(fix(i/C)+1) = store2(i+1);
% end

store6 = store6*0.1;
%store6_2 = store6_2*0.1;
%store2 = abs(store2);
%store6_2 = store6_2*0.1;
%store6_3 = store6_3*0.1;
%store6_4 = store6_4*0.1;
for i = 1:6000
    store6(i) = 0;
%    store6_2(i) = 0;
    results(i) = 0;
%    store6_2(i) = 0;
%     store6_3(i) = 0;
%     store6_4(i) = 0;
%     results(i) = 0;
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

% for i = 1:N
%     j = i+1;
%     if store6_2(i) == 0.1
%         while(store6_2(j) == 0.1)
%             store6_2(j) = 0;
%             j = j + 1;
%         end
%     end
% end
% 
% for i = 1:N
%     j = i+1;
%     if store6_3(i) == 0.1
%         while(store6_3(j) == 0.1)
%             store6_3(j) = 0;
%             j = j + 1;
%         end
%     end
% end
% for i = 1:N
%     j = i+1;
%     if store6_4(i) == 0.1
%         while(store6_4(j) == 0.1)
%             store6_4(j) = 0;
%             j = j + 1;
%         end
%     end
% end

nb_simu = sum(store6)/0.1;
nb_bornat = sum(results)/0.1;

%end
%store = ones(N);
%for i = 300001:300000+N
%    store(i-300000, 1) = store2(i, 1);
%end

subplot (2, 1, 1), plot(t, store2, t, store5, t, store6);
subplot (2, 1, 2), plot(t, store2, t, store5, t, results);
%subplot (4, 1, 3), plot(t, store2_3, t, store5_3, t, store6_3);
%subplot (4, 1, 4), plot(t, store2_4, t, store5_4, t, store6_4);
