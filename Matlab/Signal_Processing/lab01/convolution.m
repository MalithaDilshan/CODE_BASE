
% Author : Malitha Dilshan
% Title  : Lab 01-Part1:Basic signal representation in MATLAB
% Date   : 2017-09-21

clear all;

Ts = 0.01; %resolution
t = -5:Ts:5; %time vector

y1 = ramp(t,3,3);

%display(length(t));
%display(length(y1));

if length(t)==length(y1)
    y = Ts*conv(y1,y1);
    %display(y);
    plot(t,y1);
    axis([-5 8 -1 7]);
    xlabel('time(sec)');
    ylabel('y(t)');
    title('Figure :y_(t) = y_1(t)*y_1(t)');

else
    display('the length of the two vectors are different');

end

