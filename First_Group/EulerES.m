%%%%%%%%%This program is made by the Second Group Electronics Department%%%
% %%%%%%%%%      AND SUPERVISED BY   DR MOANIS MOAZ     %%%%%%%%%%%%%%%%%%%

%Eng /ESLAM MOHAMED HASHEM
%Eng /ESLAM MOHAMED Khairy
%ENG /AHMED SOLIMAN Abd elrahman
%ENG/OMAR MAHMOUD MOHAMED
%ENG/Mahmoud Magdy Mohamed
%ENG /SABER Mohamed Husien

% Euler method using MATLAB coding
f = @(x,y) (y+x+1);
h=input('please insert your step size h =     ');
if(h > 0)
    the_start=input('enter the starting value of x =      ');
    the_end=input('enter the end value of x =      ');
    if (the_end > 0)
        if(the_end > the_start)
            x=the_start:h:the_end;
            fprintf('the value of x = %f  \n',x);
            y=zeros(size(x));
            y(1)=input('insert the initial value of y0   ');
            n=numel(y);
           
            for i=1:n+1
             
                y(i+1) = y(i) + h * f(x(i),y(i));
            end
            for i=1:n+1
                fprintf('the value of y %d = %f  \n',i-1,y(i));
            end
            
        else
            fprintf('the max value of x should be greater than min value of x \n');
            
        end
    else
        fprintf('the max value of x should be greater than zero \n');
        
    end
else
    fprintf('the step size must be greater than zero \n');
    
end
