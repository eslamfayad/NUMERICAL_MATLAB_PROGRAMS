%%%%%%%%%This program is made by the Second Group Electronics Department%%% 
% %%%%%%%%%      AND SUPERVISED BY   DR MOANIS MOAZ     %%%%%%%%%%%%%%%%%%%

            %Eng /ESLAM MOHAMED HASHEM
            %Eng /ESLAM MOHAMED Khairy
            %ENG /AHMED SOLIMAN Abd elrahman
            %ENG/OMAR MAHMOUD MOHAMED
            %ENG/Mahmoud Magdy Mohamed 
            %ENG /SABER



% let the equation whose root we want to find be f(x) 
%              x = [12 13 14 16];
%              y = [5 6 9 11];
% simplified eqation example:-  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%Setting Function and initial Values%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x = [12 13 14 16];
y = [5 6 9 11];
sum = 0;
a = 12.5;
for i = 1:length(x)
    u = 1;
    l = 1;
    for j = 1:length(x)
        if j ~= i
            u = u * (a - x(j));
            l = l * (x(i) - x(j));
        end
    end
    sum= sum + u / l * y(i);
end
disp(sum);