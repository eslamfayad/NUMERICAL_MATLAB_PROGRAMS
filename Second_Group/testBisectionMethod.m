%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  test Bisection and Secant Method                             %%%%%%
%%%%%%  Author : group                                               %%%%%%
%%%%%%  - Maher Tarek Ali Maher                                      %%%%%%
%%%%%%  - Mohammed Gaber Ahmed                                       %%%%%%
%%%%%%  - Ahmed Mostafa attia                                        %%%%%%
%%%%%%  - Mahmoud fathi mahmoud                                      %%%%%%
%%%%%%  date 9 Nov 2021                                              %%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all;
close all;
clc;

str1 = '@(x) ';
str2 = input('Please enter the function: ', 's');
function1 = strcat(str1,str2);
f = str2func(function1);
accuracy = input('Please enter accuracy : ');
%% test bisection function
% f = @(x)  x^3 +4*x^2 -6*x -30;
% f = @(x)  x^2 -2*x -4;
% a = 1;
% b = 3;
% accuracy = 10^-3;

r1 = bisectionMethod(f,accuracy);
% r1 = bisectionMethod(f,a,b,accuracy);


%% test secand function
%r2 = secantMethod(f,accuracy);

%% 
if r1 ~= -1000
    fprintf(' root by Bisection Method = %f\n',r1);
else
    disp("Error in Bisection Method \ntry again with an other function\n");
end
%if r2 ~= -1000
%    fprintf(' root by Secant Method = %f\n',r2);
%else
%    disp("Error in Secant Method \ntry again with an other function\n");
%end
