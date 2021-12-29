%%%%%%%%%This program is made by the Second Group Electronics Department%%% 
% %%%%%%%%%      AND SUPERVISED BY   DR MOANIS MOAZ     %%%%%%%%%%%%%%%%%%%

            %Eng /ESLAM MOHAMED HASHEM
            %Eng /ESLAM MOHAMED Khairy
            %ENG /AHMED SOLIMAN Abd elrahman
            %ENG/OMAR MAHMOUD MOHAMED
            %ENG/Mahmoud Magdy Mohamed 
            %ENG /SABER
% Ask for user input
% Lower bound (a)
a = input('What is your lower bound (a)?')
% Upper bound (b)
b = input('What is your upper bound (b)?')
%a = 0; b = 3;
N = 1e4;

F = @(x) exp(1).^x + sin(x);

h = ((b-a)/2)/N; 
x = linspace(a,b,N);

I = 0;
for i = 1:N-1
    I = I + h/3*(F(x(i)) + 4*F((x(i)+x(i+1))/2) + F(x(i+1)));
end

disp(I)
% To compare your result:
Itz = trapz(x, F(x))