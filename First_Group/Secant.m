%%%%%%%%%This program is made by the Second Group Electronics Department%%% 
% %%%%%%%%%      AND SUPERVISED BY   DR MOANIS MOAZ     %%%%%%%%%%%%%%%%%%%

            %Eng /ESLAM MOHAMED HASHEM
            %Eng /ESLAM MOHAMED Khairy
            %ENG /AHMED SOLIMAN Abd elrahman
            %ENG/OMAR MAHMOUD MOHAMED
            %ENG/Mahmoud Magdy Mohamed 
            %ENG /SABER Mohamed Husien
%find the root of the function f(x) = x2-2 = 0 by using Secant Method
clear all;
close all;
clc;
f=inline('x^2-2');
x0=input('Enter x0=');
x1=input('Enter x1=');
tol=input('Enter tolarance=');
itr=input('Enter number of iteration=');
p=0;
for i=1:itr
    x2=(x0*f(x1)-x1*f(x0))/(f(x1)-f(x0));
    if abs(x2-x1)<tol
        p=1;
        k=i;
        break;
    else
        x0=x1;
        x1=x2;
    end
end

if p==1
    fprintf('Solution is %f at iterations %i',x2,k)
else
    fprintf('No convergent solution exist in the given number iteration')
end