%%%%%%%%%This program is made by the Second Group Electronics Department%%% 
% %%%%%%%%%      AND SUPERVISED BY   DR MOANIS MOAZ     %%%%%%%%%%%%%%%%%%%

            %Eng /ESLAM MOHAMED HASHEM
            %Eng /ESLAM MOHAMED Khairy
            %ENG /AHMED SOLIMAN Abd elrahman
            %ENG/OMAR MAHMOUD MOHAMED
            %ENG/Mahmoud Magdy Mohamed 
            %ENG /SABER Mohamed Husien

clear all;
close all;
clc;
f=inline('x^3+4*x^2-10');
df=inline('3*x^2+8*x');
x0=input('Enter initial approximation=');
tol=input('Enter tolerance=');
itr=input('Enter number of iteration=');
p=0;
for i=1:itr
    x1=x0-f(x0)/df(x0);
    if abs(x1-x0) < tol
        p=1;
        k=i;
        break;
    else
        x0=x1;
    end
end

if p==1
    fprintf('Solution is %f at iterations %i',x1,k)
else
    fprintf('No convergent solution exist in the given number iteration')
end