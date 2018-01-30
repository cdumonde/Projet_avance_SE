function [ signal_concat ] = concat( signal, nb_spl_in, nb_spl_out )

    if( nb_spl_out > nb_spl_in)
        
        disp('error in input arguments');
        
    else

        signal_concat = zeros(nb_spl_out, 1);

        for i = (nb_spl_in - nb_spl_out):(nb_spl_in - 1)
            signal_concat(i - (nb_spl_in - nb_spl_out) +1) = signal(i);
        end

    end
end

