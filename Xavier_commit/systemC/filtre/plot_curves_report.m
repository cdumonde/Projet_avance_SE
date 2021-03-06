clear

load '/Users/Xavier/Documents/MesDocuments/Cours_nsave/Enseirb-E3_nsave/pr310/store1.txt'
load '/Users/Xavier/Documents/MesDocuments/Cours_nsave/Enseirb-E3_nsave/pr310/store2.txt'
load '/Users/Xavier/Documents/MesDocuments/Cours_nsave/Enseirb-E3_nsave/pr310/store5.txt'
load '/Users/Xavier/Documents/MesDocuments/Cours_nsave/Enseirb-E3_nsave/pr310/store6.txt'
load '/Users/Xavier/Documents/MesDocuments/Cours_nsave/Enseirb-E3_nsave/pr310/data_out_light.txt'

Ni = 400000;
No = 50000;
t = 1:No;

% store1_concat = store1;
% store2_concat = store2;
% store5_concat = -store5;
% store6_concat = store6;

 results = zeros(Ni, 1);
 
 for i = 1:3040
    if data_out_light(i)< Ni
        results(data_out_light(i)) = 0.1;
    end
 end
 
data_out_concat = concat(results, Ni, No);

store1_concat = concat(store1, Ni, No);
store2_concat = concat(store2, Ni, No);
store5_concat = concat(-store5, Ni, No);
store6_concat = concat(store6, Ni, No)*0.1;

% subplot (4, 1, 1), plot(t, store1_concat, 'Color', [0.4, 0.8, 0.4]), title('(a)');
% subplot (4, 1, 2), plot(t, store2_concat), title('(b)');
% subplot (4, 1, 3), plot(t, store2_concat, t, store5_concat, 'red'), title('(c)');
% subplot (4, 1, 4), plot(t, store6_concat, 'Color', [1, 0.8, 0]), title('(d)');

subplot (4, 1, 1), plot(t, store2_concat, t, data_out_concat), title('(a)');
subplot (4, 1, 2), plot(t, store2_concat, t, store5_concat, t, store6_concat), title('(b)');
subplot (4, 1, 3), plot(t, store2_concat, t, store5_concat, t, data_out_concat), title('(a)');
subplot (4, 1, 4), plot(t, store2_concat, t, store5_concat, t, store6_concat), title('(b)');
% 'Color', [0.92941176, 0.69411765, 0.1254902])