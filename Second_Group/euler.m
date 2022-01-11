%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  test Curve Fitting and lagrange                              %%%%%%
%%%%%%  Author's : group                                             %%%%%%
%%%%%%  - Maher Tarek Ali Maher                                      %%%%%%
%%%%%%  - Mohammed Gaber Ahmed                                       %%%%%%
%%%%%%  - Ahmed Mostafa attia                                        %%%%%%
%%%%%%  - Mahmoud fathi mahmoud                                      %%%%%%
%%%%%%  - salah tawfwek shaheen                                      %%%%%%
%%%%%%  - karem mohamed ali el siad                                  %%%%%%
%%%%%%  - Ahmed fathi                                                %%%%%%
%%%%%%  date 9 Nov 2021                                              %%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function out = euler(dy,h,a,b,y0)

n = (b-a)/h + 1;
 y(1) = y0;
 x(1) = a;

for i=1:n
   
fprintf('%d \t %f \t %f \t %f \t\n',i, x(i),y(i),dy(x(i),y(i)));

x(i+1) = x(i) + h;
y(i+1) = y(i) + dy(x(i),y(i))*h;

if i == n
   out  = dy(x(i),y(i)); 
end
end

