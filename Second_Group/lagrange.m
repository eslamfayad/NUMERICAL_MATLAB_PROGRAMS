%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%   lagrange method                                             %%%%%%
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

function  pY = lagrange(X,Y)

syms x

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
pY = collect(pX);