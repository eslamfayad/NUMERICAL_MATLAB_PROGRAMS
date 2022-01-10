
%%%%%%%%%This program is made by the Second Group Electronics Department%%% 
% %%%%%%%%%      AND SUPERVISED BY   DR MOANIS MOAZ     %%%%%%%%%%%%%%%%%%%

            %Eng /ESLAM MOHAMED HASHEM
            %Eng /ESLAM MOHAMED Khairy
            %ENG /AHMED SOLIMAN Abd elrahman
            %ENG/OMAR MAHMOUD MOHAMED
            %ENG/Mahmoud Magdy Mohamed 
            %ENG /SABER
% newton forward and backward interpolation
clc;
close all;

% n = input(' Enter no of values in X:');
% for a = 1:n
%     X(a)= input('Enter elements of arry X');
% end
% for b =1:n
%     Y(b)= input('Enter elements of arry Y')
% end
X = [20 23 26 29];
Y = [0.342 0.3907 0.4384 0.4848];
n = length(X);

x = input('Enter particular value of X at which we have to find value of Y');
h = X(2) - X(1)
for i = 1:n-1
    d(i,1) = Y(i+1) - Y(i);
end
for j = 2:n-1
    for i = 1:n-j
        d(i,j) = d(i+1,j-1)-d(i,j-1);
    end
end

%% Yn(x) = y0 + p*dy0 + p(p-1)*d^2(y0)/2factorial +....
p = (x-X(1))/h
prod = 1;
y = Y(1);
for t = 1:n-1
    prod = prod*(p-t+1)/t;
    y = y + prod*d(1,t);
end


d
y