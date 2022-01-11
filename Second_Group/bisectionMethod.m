%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  Bisection Method                                             %%%%%%
%%%%%%  Author's : group                                             %%%%%%
%%%%%%  - Maher Tarek Ali Maher                                      %%%%%%
%%%%%%  - Mohammed Gaber Ahmed                                       %%%%%%
%%%%%%  - Ahmed Mostafa attia                                        %%%%%%
%%%%%%  - Mahmoud fathi mahmoud                                      %%%%%%
%%%%%%  - salah tawfwek shaheen                                      %%%%%%
%%%%%%  - karem mohamed ali  el siad                                 %%%%%%
%%%%%%  - Ahmed fathi                                                %%%%%%
%%%%%%  date 9 Nov 2021                                              %%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function r = bisectionMethod(varargin)
valid = 1;
maxIteration = 20;
%% check function overloading
if nargin == 4
    %% if input function parameter are f,a,b,accuracy
    % set parameters
    f = varargin{1};
    a = varargin{2};
    b = varargin{3};
    accuracy = varargin{4};

elseif nargin == 2
    %%  input function parameter are f,accuracy
    f = varargin{1};
    accuracy = varargin{2};
    % estimate interval section limites
    status = 1;
    a = 0;
     i = 0;
    while status
        i = i+1;
        a = a +1;
        b = a+1;
        % check process validation
        if (f(a)*f(b) < 0)
            status = 0;
        end
        
        if(i > maxIteration)
            valid = 0;
            disp("cannot get valid interval section for this function")
            break;
        end
    end             
else
    %% invalid function parameters
    disp("invalid function parameter")
    valid = 0;
end
i = 0;
%% Bisection Algorithm process
if valid ==1
    % check process validation
    if (f(a)*f(b) > 0)
        disp("wrong interval section")
    else
        % start process recursion
        while abs(a-b) > accuracy
            i = i + 1;
            % calc interval middle
            r = (a+b)/2; 
            % check sign of roots and select region of operation left or right
            if f(a)*f(r) < 0
                b = r;
            else
                a = r;
            end  
            if i > maxIteration
                break;
            end
        end   
    end
else
    r = -1000;      % invalid return value for root
end
end