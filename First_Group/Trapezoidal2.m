%%%%%%%%%This program is made by the Second Group Electronics Department%%% 
% %%%%%%%%%      AND SUPERVISED BY   DR MOANIS MOAZ     %%%%%%%%%%%%%%%%%%%

            %Eng /ESLAM MOHAMED HASHEM
            %Eng /ESLAM MOHAMED Khairy
            %ENG /AHMED SOLIMAN Abd elrahman
            %ENG/OMAR MAHMOUD MOHAMED
            %ENG/Mahmoud Magdy Mohamed 
            %ENG /SABER
% Numerical Analysis Trapezoidal Rule using MATLAB
clear all;
close all;
clc;

f=inline('1/(1+x^2)');

a=input('Enter lower limit of integral=');
b=input('Enter upper limit of integral=');
n=input('Enter number of intervals=');

h=(b-a)/n;

sum=0.0;

for i=1:n-1
    x=a+i*h;
    sum=sum+f(x);
end

trap=h*(f(a)+2*sum+f(b))/2.0;
fprintf('Evaluated Integral =%f',trap);