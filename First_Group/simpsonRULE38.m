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
sum1=0.0;
sum2=0.0;
sum3=0.0;
for i=1:3:n-2
    y=a+i*h;
    sum1=sum1+Y(x);
end
for i=2:3:n-1
    y=a+i*h;
    sum2=sum2+Y(x);
end
for i=3:3:n-3
    y=a+i*h;
    sum3=sum3+Y(x);
end

simp=3*h*(Y(a)+3.0*sum1+3.0*sum2+2.0*sum3+Y(b))/8.0