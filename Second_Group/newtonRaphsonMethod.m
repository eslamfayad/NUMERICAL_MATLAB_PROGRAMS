%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  Bisection Method                                             %%%%%%
%%%%%%  Author : group                                               %%%%%%
%%%%%%  - Maher Tarek Ali Maher                                      %%%%%%
%%%%%%  - Mohammed Gaber Ahmed                                       %%%%%%
%%%%%%  - Ahmed Mostafa attia                                        %%%%%%
%%%%%%  - Mahmoud fathi mahmoud                                      %%%%%%
%%%%%%  date 9 Nov 2021                                              %%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function x = newtonRaphsonMethod(varargin)
valid = 1;
maxIteration = 20;
%% check function overloading
if nargin == 4
    %% if input function parameter are f,a,b,accuracy
    % set parameters
    f = varargin{1};
    df = varargin{2};
    a = varargin{3};
    accuracy = varargin{4};

elseif nargin == 3
    %%  input function parameter are f,accuracy
    f = varargin{1};
    df = varargin{2};
    accuracy = varargin{3};
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
x = a;
%% Bisection Algorithm process
if valid ==1
   
        % start process recursion
        while abs(a-b) > accuracy
            i = i + 1;
            xb = x;
            % calc root
            x = xb - (f(xb)/df(xb)); 
             
            if i > maxIteration
                break;
            end
        end   
    
else
    x = -1000;      % invalid return value for root
end
end