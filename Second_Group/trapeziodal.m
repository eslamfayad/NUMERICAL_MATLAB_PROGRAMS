%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  trapeziodal                                                  %%%%%%
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

function [Tr , xi] = trapeziodal(y,a,b)
n = length(y)-1;
h = (b-a)/n;
xi = a:h:b;
f_sets = sum(y(2:1:end-1));  
Tr = h/2*(y(1) + 2*f_sets + y(end));
end