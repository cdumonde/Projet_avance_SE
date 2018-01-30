function [ signal ] = anti_rebond( signal, nb_spl )

    for i = 1:nb_spl
        j = i+1;
        if store6(i) == 0.1
            while(store6(j) == 0.1)
                signal(j) = 0;
                j = j + 1;
            end
        end
    end

end

