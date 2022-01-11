function [a, b, c, QuadModel]= QuadFit( x, y )
n = length ( x );                   % number of data points
sum_x = sum( x );                   % sum of all values in array x
sum_y = sum( y );                   % sum of all values in array y
sum_x2 = sum( x.^2 );               % sum of squares of values in x
sum_xy = sum( x .* y );             % sum of element-wise products of x,y
sum_x3 = sum( x.^3 );               % sum of x3 of values in x
sum_x4 = sum( x.^4 );               % sum of x4 of values in x
x2     = x.^2;
sum_x2y = sum( x2.* y );        % sum of element-wise products of x2,y

syms a b c x y z

EQ(1) = n*a + b*sum_x + c*sum_x2 == sum_y;
EQ(2) = a*sum_x + b*sum_x2 + c*sum_x3 == sum_xy;
EQ(3) = a*sum_x2 + b*sum_x3 + c*sum_x4 == sum_x2y;

abc = solve(EQ,a,b,c);

a = abc.a;
b = abc.b;
c = abc.c;

% linear model implemented as y = a + x*b + cx^2
QuadModel = c * x.^2 + x.*b + a ;