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
function out = modEuler(dy,h,a,b,y0)

n = (b-a)/h + 1;
 y(1) = y0;
 x(1) = a;

for i=1:n
   
    x(i+1) = x(i) + h;
    
    ydot = dy(x(i),y(i));
    fydot = dy(x(i+1),ydot);
    y(i+1) = y(i) + (ydot + fydot)*h/2;
    fprintf('%d \t %f \t %f \t %f \t %f \t\n',i, x(i),y(i),ydot,fydot);


    if i == n
        out  = dy(x(i),y(i)); 
    end
end

