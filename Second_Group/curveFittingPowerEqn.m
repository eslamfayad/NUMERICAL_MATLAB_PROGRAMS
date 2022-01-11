clear all;
close all;
clc;

disp('curve fitting exponential equation y=ae^bx');
x = input('enter x points as vector form [] : ');
y = input('enter y points as vector form [] : ');
n = length(x);
Y = log(y);
X = (x);
sumX = 0;
sumY = 0;
sumXY = 0;
sumX2 = 0;
for i=1:n
   sumX = sumX + X(i);
   sumY = sumY + Y(i);
   sumXY = sumXY + X(i)*Y(i);
   sumX2 = sumX2 + X(i)*X(i);
end
d = [sumX n;
     sumX2 sumX];
da = [sumY n;
     sumXY sumX];
db = [sumX sumY;
     sumX2 sumXY];
 
 a1 = det(da)/det(d);
 b1 = det(db)/det(d);
 
 b= a1;
 a = exp(b1);
 % [0.1 0.2 0.3 0.4]
 %[1.832 2.238 2.733 3.338]
% [2 4 6 8]
% [25 38 56 84]
 fprintf('the equation of line is Y=%f*x^%f\n',a,b)
 fprintf('the equation of line is Y=%f*e^%fx\n',a,b)