%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  test Curve Fitting and lagrange                              %%%%%%
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

%% problem
y = [1 2/3 1/2 2/5 1/3 2/7 1/4];
a = 0;
b = 3;

%% check trapeziodal
[Tr , xitp] = trapeziodal(y,a,b);

%% check simpson 1/3
[Issmson13 , xismson13] = simpson13(y,a,b);
%% check simpson 3/8


%% print sollution of methods

disp("solution using trapeziodal method ");
disp("trapeziodal  ");
Tr 
disp("set's  ");
xitp

disp("solution using simpson 1/3 method ");
disp("simpson  ");
Issmson13 
disp("set's  ");
xismson13
