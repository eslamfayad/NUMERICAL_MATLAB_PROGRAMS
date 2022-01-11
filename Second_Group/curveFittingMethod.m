%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  Curve fitting  Method                                        %%%%%%
%%%%%%  Author's : group                                             %%%%%%
%%%%%%  - Maher Tarek Ali Maher                                      %%%%%%
%%%%%%  - Mohammed Gaber Ahmed                                       %%%%%%
%%%%%%  - Ahmed Mostafa attia                                        %%%%%%
%%%%%%  - Mahmoud fathi mahmoud                                      %%%%%%
%%%%%%  - salah tawfwek shaheen                                      %%%%%%
%%%%%%  - karem mohamed ali  el siad                                 %%%%%%
%%%%%%  - Ahmed fathi                                                %%%%%%
%%%%%%  date 9 Nov 2021                                              %%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function y = curveFittingMethod(x,y)

n = length(x);
Sxy = 0;
Sx = 0;
Sy = 0;
Sx2 = 0;

for i = 1:n
    Sxy = Sxy + (x(i)*y(i));
    Sx = Sx + x(i);
    Sy = Sy + y(i);
    Sx2 = Sx2 + (x(i)*x(i));
end

a = ((n*Sxy) - (Sx*Sy))/((n*Sx2) - (Sx)^2);
b = (Sy - (a*Sx))/n;

syms x 
y = a*x + b;
