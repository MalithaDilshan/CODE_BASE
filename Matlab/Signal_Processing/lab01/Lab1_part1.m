
% Author : Malitha Dilshan
% Title  : Lab 01-Part1:Basic signal representation in MATLAB
% Date   : 2017-09-21

clear all;

Ts = 0.01; %resolution
t = -5:Ts:5; %time vector

y1 = ramp(t,3,3);
y2 = ramp(t,-6,1);
y3 = ramp(t,3,0);
y4 = ustep(-t,-3);

y = y1-2*y2+3*y3-y4;  % signal y(t) = r(t+3)-2r(t+1)+3r(t)-u(t-3)
plot(t,y,'r','linewidth',1.5);
axis([-5 5 -1 7]);
grid on;

% Verification

%plot(t,y1,'r');
%axis([-5 5 -1 7]);
%hold on
%plot(t,y2,'c');
%plot(t,y3,'b');
%plot(t,y4,'g');


