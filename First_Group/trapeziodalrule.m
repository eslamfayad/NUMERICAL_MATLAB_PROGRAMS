% Numerical Analysis Trapeziodal Rule using MATLAB
clear all;
close all;
clc;
str1 = '@(x) ';
str2 = input('Enter the function variable(x) : ', 's');
function1 = strcat(str1,str2);
Y = str2func(function1)
a = input('Enter lower limit of integral=  ');
b = input('Enter upper limit of integral=  ');
n = input ('Enter the value of (n):  ');
h = (b-a)/n;
x = a:h:b
i=1;
for x = a:h:b  
     y(i)=Y(x)
     i=i+1;
end
 f_sets = sum(y(2:1:end-1));  
 Tr = h/2*(y(1) + 2*f_sets + y(end))