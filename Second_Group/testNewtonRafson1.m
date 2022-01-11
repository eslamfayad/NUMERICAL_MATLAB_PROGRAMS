%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  test Bisection , Secant Method and Newton Raphson            %%%%%%
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
clear all;
close all;
clc;
%% test bisection function
% f = @(x)  x^3 +4*x^2 -6*x -30;
% df = @(x) 3*x +8*x -6;
f = @(x)  x^2 -2*x -4;
df = @(x) 2*x -2;
% a = 1;
% b = 3;
accuracy = 10^-3;


r1 = bisectionMethod(f,accuracy);
% r1 = bisectionMethod(f,a,b,accuracy);

%% test secand function
r2 = secantMethod(f,accuracy);

%% test Newton Raph
r3 = newtonRaphsonMethod(f,df,accuracy);

%% 
if r1 ~= -1000
    fprintf(' root by Bisection Method = %f\n',r1);
else
    disp("Error in Bisection Method \ntry again with an other function\n");
end

if r2 ~= -1000
    fprintf(' root by Secant Method = %f\n',r2);
else
    disp("Error in Secant Method \ntry again with an other function\n");
end

if r3 ~= -1000
    fprintf(' root by Newton Raphson Method = %f\n',r2);
else
    disp("Error in Newton Raphson Method \ntry again with an other function\n");
end