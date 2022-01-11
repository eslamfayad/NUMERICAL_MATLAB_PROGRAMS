% Numerical Analysis Trapezoidal Rule using MATLAB
clear all;
close all;
clc;

f=inline('(1+x^2)');

a=input('Enter lower limit of integral=');
b=input('Enter upper limit of integral=');
n=input('Enter number of intervals=');

deltaX=(b-a)/n;

sum=0.0;
fprintf('     x      |      f(x)\n')
fprintf('%d|%f  |  %f\n',0,a,f(a))
for i=1:n-1
    x=a+i*deltaX;
    sum=sum+f(x);
    fprintf('%d|%f  |  %f\n',i,x,f(x))
end
fprintf('%d|%f  |  %f\n',n+1,b,f(b))
trap=deltaX*(f(a)+2*sum+f(b))/2.0;
fprintf('Evaluated Integral =%f',trap);