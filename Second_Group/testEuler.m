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

% syms x;
% syms y;


str1 = '@(x,y) ';
str2 = input('Please enter the function: ', 's');
function1 = strcat(str1,str2);
dy = str2func(function1);
a = input('Enter interval section a :  ');
b = input('Enter interval section b :  ');
h = input('Enter step size h :  ');
y0 = input('Enter initial value of y0 :  ');

% dy = @(x,y) x*y;
% dy = @(x,y) x+y+1;
% step size
% h = 0.2;
% interval section
% a = 0;
% b = 1;
% y0 = 0.5;
% out = modEuler(dy,h,a,b,y0)
out = euler(dy,h,a,b,y0)

out = modEuler(dy,h,a,b,y0)
