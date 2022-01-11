%%%%%%%%%This program is made by the Second Group Electronics Department%%% 
% %%%%%%%%%      AND SUPERVISED BY   DR MOANIS MOAZ     %%%%%%%%%%%%%%%%%%%

            %Eng /ESLAM MOHAMED HASHEM
            %Eng /ESLAM MOHAMED Khairy
            %ENG /AHMED SOLIMAN Abd elrahman
            %ENG/OMAR MAHMOUD MOHAMED
            %ENG/Mahmoud Magdy Mohamed 
            %ENG /SABERMohamed Husien

% Numerical Method 
% Euler method using MATLAB coding
clear all;
close all;
clc;

%f=inline('y-t^2+1');
f=inline('x+y+1');
x0=input('Enter x0=');
y0=input('Enter y0=');
xn=input('Enter upper limit of interval xn=');
h=input('Enter width (Step SIZE) h=');
n=(xn-x0)/h;   % determine how many intervals

fprintf('--------------------------------------------\n')
fprintf('    x              y            ynew\n');
fprintf('--------------------------------------------\n')

for i=1:n+1
    y1=y0+h*f(x0,y0);
    fprintf('%f      %f       %f \n',x0,y0,y1)
    y0=y1;
    x0=x0+h;
end