%%%%%%%%%This program is made by the Second Group Electronics Department%%% 
% %%%%%%%%%      AND SUPERVISED BY   DR MOANIS MOAZ     %%%%%%%%%%%%%%%%%%%

            %Eng /ESLAM MOHAMED HASHEM
            %Eng /ESLAM MOHAMED Khairy
            %ENG /AHMED SOLIMAN Abd elrahman
            %ENG/OMAR MAHMOUD MOHAMED
            %ENG/Mahmoud Magdy Mohamed 
            %ENG /SABER Mohamed Husien

% Numerical Analysis Simpson 1/3 Rule using MATLAB
clear all;
close all;
clc;
str1 = '@(x) ';
str2 = input('Enter the function variable(x) : ', 's');
function1 = strcat(str1,str2);
Y = str2func(function1)
a = input('Enter the lower limit:  ');
b = input('Enter the upper limit:  ');
n = input ('Enter the value of (n):  ');
h = (b-a)/n;
x = a:h:b
i=1;
for x = a:h:b  
     y(i)=Y(x)
     i=i+1;
end
f_1sets = sum(y(2:2:end));  
f_2sets = sum(y(3:2:end-2));
Is = h/3*(y(1) + 4*f_1sets + 2*f_2sets + y(end))