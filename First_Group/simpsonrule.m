%%%%%%%%%This program is made by the Second Group Electronics Department%%% 
% %%%%%%%%%      AND SUPERVISED BY   DR MOANIS MOAZ     %%%%%%%%%%%%%%%%%%%

            %Eng /ESLAM MOHAMED HASHEM
            %Eng /ESLAM MOHAMED Khairy
            %ENG /AHMED SOLIMAN Abd elrahman
            %ENG/OMAR MAHMOUD MOHAMED
            %ENG/Mahmoud Magdy Mohamed 
            %ENG /SABER Mohamed Husien
% Numerical Analysis Simpson 1/3 Rule using MATLAB
y = [1 2/3 1/2 2/5 1/3 2/7 1/4];
a = 0;
b = 3;
n = length(y)-1;
h = (b-a)/n;
xi = a:h:b;
f_1sets = sum(y(2:2:end));  
f_2sets = sum(y(3:2:end-2));
Is = h/3*(y(1) + 4*f_1sets + 2*f_2sets + y(end))