%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  Secant Method                                                %%%%%%
%%%%%%  Author : group                                               %%%%%%
%%%%%%  - Maher Tarek Ali Maher                                      %%%%%%
%%%%%%  - Mohammed Gaber Ahmed                                       %%%%%%
%%%%%%  - Ahmed Mostafa attia                                        %%%%%%
%%%%%%  - Mahmoud fathi mahmoud                                      %%%%%%
%%%%%%  date 9 Nov 2021                                              %%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function r = secantMethod(f,accuracy)
 % estimate interval section limites
    status = 1;
    valid = 1;
    a = -1;
    maxIteration = 20;
    i=0;
    while status
        i = i + 1;
        a = a +1;
        b = a+1;
        % check process validation
        if (f(a)*f(b) < 0)
            status = 0;
        end
        
        if(a > maxIteration)
            valid = 0;
            disp("cannot get valid interval section for this function")
            break;
        end
    end

    i=0;
    if valid
        r = b - ((f(b)*(b-a))/(f(b) - f(a)));

    while (abs(f(r)) > accuracy)
        i = i+1;
        a = b;
        b = r;
        r = b - ((f(b)*(b-a))/(f(b) - f(a)));
        if(i > maxIteration)
            break;
        end
    end  
    else
       r = -1000; 
    end
end