y = [1 2/3 1/2 2/5 1/3 2/7 1/4];
a = 0;
b = 3;
n = length(y)-1;
h = (b-a)/n;
xi = a:h:b;
f_sets = sum(y(2:1:end-1));  
Tr = h/2*(y(1) + 2*f_sets + y(end))