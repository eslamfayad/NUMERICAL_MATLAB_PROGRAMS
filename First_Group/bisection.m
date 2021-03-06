%%%%%%%%%This program is made by the Second Group Electronics Department%%% 
% %%%%%%%%%      AND SUPERVISED BY   DR MOANIS MOAZ     %%%%%%%%%%%%%%%%%%%

            %Eng /ESLAM MOHAMED HASHEM
            %Eng /ESLAM MOHAMED Khairy
            %ENG /AHMED SOLIMAN Abd elrahman
            %ENG/OMAR MAHMOUD MOHAMED
            %ENG/Mahmoud Magdy Mohamed 
            %ENG /SABER Mohamed husien
%clearing all old variable and close all 
clear all;
close all;
% Clearing Screen
clc

% Setting x as symbolic variable
syms x;

% Input Section
y = input('Enter non-linear equations: ');
xl = input('Enter first guess: ');
xu = input('Enter second guess: ');
e = input('Tolerxlble error: ');

% Finding Functional Value
fxl = eval(subs(y,x,xl));
fxu = eval(subs(y,x,xu));

% Implementing Bisection Method
if fxl*fxu > 0 
    disp('Given initial values do not bracket the root.');
else
    xr = (xl+xu)/2;
    fxr = eval(subs(y,x,xr));
    fprintf('\n\nxl\t\t\txu\t\t\txr\t\t\tf(xr)\n');
    while abs(fxr)>e
        fprintf('%f\t%f\t%f\t%f\n',xl,xu,xr,fxr);
        if fxl*fxr< 0
            xu =xr;
        else
            xl =xr;
        end
        xr = (xl+xu)/2;
        fxr = eval(subs(y,x,xr));
    end
    fprintf('\nRoot is: %f\n', xr);
end