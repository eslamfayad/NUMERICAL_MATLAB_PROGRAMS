
%%%%%%%%%This program is made by the Second Group Electronics Department%%%
% %%%%%%%%%      AND SUPERVISED BY   DR MOANIS MOAZ     %%%%%%%%%%%%%%%%%%%

%Eng /ESLAM MOHAMED HASHEM
%Eng /ESLAM MOHAMED Khairy
%ENG /AHMED SOLIMAN Abd elrahman
%ENG/OMAR MAHMOUD MOHAMED
%ENG/Mahmoud Magdy Mohamed
%ENG /SABER mohamed husien

% Numerical Method
% Midpoint using MATLAB coding
a=0;
b=1;
n=10;
h=(b-a)/n;
xx= zeros(1,n);
for i=1:n
xx(i)=a+h/2+(i-1)*h;
end
sum=0;
for i=1:n
sum=sum+h*((sin(xx(i))/xx(i)));
end



