clear all;clc;
syms x
% % defin X
% X=[1 2 3 4 5]; 
% % defin Y
% Y=[-2 2 18 52 110]; 


X = [1 2 3 4 5 6 7];
Y = [0.5 2.5 2 4 3.5 6 5.5];
for n=1:length(X)
    count=1;  
    for k=1:length(X)
        if k~=n
         f(count)=(x-X(k))/(X(n)-X(k));
           count=count+1;  
        end
    end
    p(n)=Y(n)*prod(f);
end 
pX=sum(p);
PY = collect(pX);
PY