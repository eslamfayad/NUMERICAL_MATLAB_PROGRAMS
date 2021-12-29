% Example 2.3(a)
% In Matlab command window
% newton_table_test.m
% x = [1.00 1.3 1.6 1.9 2.2];
% y = [0.7651977 0.6200860 0.4554022 0.2818186
0.1103623];
% F = newton_table(x, y)
function [F] = newton_table(x,y)
% newton_table generate 1-based newton table
% x = [x0,x1,...,xn-1] is the vector of nodes
% y = [y0,y1,...,yn-1] is the vector of data values
% F = n by n matrix of divided differences.
% Diagonal elements are the coefficients of newton polynomial
% x0 x(1) F(1,1)
% x1 x(2) F(2,1) F(2,2)
% x2 x(3) F(3,1) F(3,2) F(3,3)
% x3 x(4) F(4,1) F(4,2) F(4,3) F(4,4)
% ... ... ... ... ... ...
% ... ... ... ... ... ...
% xn-1 x(n) F(n,1) F(n,2) F(n,3) F(n,4) ... ... F(n,n)
n = length(x);
F = zeros(n,n);
% Construct first column using data values in y
for i = 1:n
F(i,1) = y(i);
end
% Construct divided diffreence table
% loop over column j
for j = 2:n
% loop down column j from the diagonal
for i = j:n
F(i,j) = (F(i,j-1) - F(i-1,j-1)) / (x(i) - x(i-j+1));
end
end