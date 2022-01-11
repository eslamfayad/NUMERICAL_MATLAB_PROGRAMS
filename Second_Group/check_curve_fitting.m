%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  test Curve Fitting and lagrange                              %%%%%%
%%%%%%  Author's : group                                             %%%%%%
%%%%%%  - Maher Tarek Ali Maher                                      %%%%%%
%%%%%%  - Mohammed Gaber Ahmed                                       %%%%%%
%%%%%%  - Ahmed Mostafa attia                                        %%%%%%
%%%%%%  - Mahmoud fathi mahmoud                                      %%%%%%
%%%%%%  - salah tawfwek shaheen                                      %%%%%%
%%%%%%  - karem mohamed ali el siad                                  %%%%%%
%%%%%%  - Ahmed fathi                                                %%%%%%
%%%%%%  date 9 Nov 2021                                              %%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all;
close all;
clc;

%% check curve fitting
x = [1 2 3 4 5 6 7];
y = [0.5 2.5 2 4 3.5 6 5.5];

C = curveFittingMethod(x,y);

%% check curve fitting

% L = lagrange(x,y);

%% print results
disp("solution using linear reggrission curve fitting method \n");
C
% disp("solution using Lagrange method \n");
% L
