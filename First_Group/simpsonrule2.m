%%%%%%%%%This program is made by the Second Group Electronics Department%%% 
% %%%%%%%%%      AND SUPERVISED BY   DR MOANIS MOAZ     %%%%%%%%%%%%%%%%%%%

            %Eng /ESLAM MOHAMED HASHEM
            %Eng /ESLAM MOHAMED Khairy
            %ENG /AHMED SOLIMAN Abd elrahman
            %ENG/OMAR MAHMOUD MOHAMED
            %ENG/Mahmoud Magdy Mohamed 
            %ENG /SABER Mohamed Husien
% Numerical Analysis Simpson 3/8 Rule using MATLAB
clear all;
close all;
clc;

f=inline('1/(1+x)');

a=input('Enter lower limit of integral=');
b=input('Enter upper limit of integral=');
n=input('Enter number of intervals (multiple of 3)=');

h=(b-a)/n;

sum1=0.0;
sum2=0.0;
sum3=0.0;

for i=1:3:n-2
    x=a+i*h;
    sum1=sum1+f(x);
end
for i=2:3:n-1
    x=a+i*h;
    sum2=sum2+f(x);
end
for i=3:3:n-3
    x=a+i*h;
    sum3=sum3+f(x);
end

simp=3*h*(f(a)+3.0*sum1+3.0*sum2+2.0*sum3+f(b))/8.0;

fprintf('Integrated value is %f',simp)