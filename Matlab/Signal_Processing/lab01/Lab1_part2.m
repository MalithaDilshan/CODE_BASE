% Author : Malitha Dilshan
% Title  : Lab 01-Part2:Generate a rectangular pulse
% Date   : 2017-09-21

F_s = 100;  % define the pefered frequency
T_s = 1/F_s;
t = -5:T_s:5;

t0 = -10:T_s:10; % define the range of plot(t axis)

x1 = rect(t,t0);
plot(t0,x1,'r','linewidth',1.5);
grid on
axis([-10 10 -1 2]);
xlabel('time(sec)');
ylabel('x_1(t)');
title('plot 1: A rectangular pulse');