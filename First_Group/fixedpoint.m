%%%%%%%%%This program is made by the Second Group Electronics Department%%% 
% %%%%%%%%%      AND SUPERVISED BY   DR MOANIS MOAZ     %%%%%%%%%%%%%%%%%%%

            %Eng /ESLAM MOHAMED HASHEM
            %Eng /ESLAM MOHAMED Khairy
            %ENG /AHMED SOLIMAN Abd elrahman
            %ENG/OMAR MAHMOUD MOHAMED
            %ENG/Mahmoud Magdy Mohamed 
            %ENG /SABER Mohamed Husien

% let the equation whose root we want to find be f(x) = e^-x =0
% simplified eqation example:-  x = e^-x
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%Setting Function and initial Values%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all;
close all;
clc;
es = 1;                                         %Allowable  Error
i=0;                                            %Iteration Counter
xi=0;                                           % initial Guess for X
g=@(x) exp(-x);
f=@(x) exp(-x)-x;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
root =0;
fprintf('Iteration NO    xi       f(x)        Ea \n'); %% printing table header
fprintf('%5d  %15.5f   \n' ,[i xi]);

ea = abs((g(xi)-xi)/g(xi))*100;
i=i+1;
fprintf('%5d    %10.5f  %10.5f  %10.5f  \n' ,[i g(xi) f(xi) ea] );
xi=g(xi);
%%%%%%%%%%%%%%%%%%%%%%%% Finite loop to get the root when finding  %%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%% the  accepted ERROR                         %%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
while ea > es 
 ea = abs((g(xi)-xi)/g(xi))*100; 
 i=i+1;
 fprintf('%5d  %13.5f %13.5f %10.5f  \n' ,[i g(xi) f(xi) ea] );
 root =f(xi);
 xi=g(xi);
end

fprintf('The root is %10.5f  \n' ,[root] );          %print the Equation Root
