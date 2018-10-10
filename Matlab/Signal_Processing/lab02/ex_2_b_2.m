% Author : Malitha Dilshan
% Title  : Lab 02-Exersice 01-part-b(i)
% Date   : 2017-09-21

clear all;
close all;

Ts = 0.001; %resolution
t = 0:Ts:30; %time vector
n = 0:5:30;
f = 8*pi*t/31;
display(min(f));
f1 = 8*pi*n/31;
y = cos(f);
y1 = cos(f1);

w0 = 8*pi/31;  % fundamental frequency rad/s
T0 = 2*31/8;
disp(T0);

subplot(2,1,1)
plot(t,y,'r','linewidth',1.5);
axis([0 30 -1.5 1.5]);
grid on;
xlabel('time(sec)');
ylabel('y(t)');

subplot(2,1,2)
stem(n,y1,'r','linewidth',1.5);
axis([0 30 -1.5 1.5]);
grid on;
xlabel('time(sec)');
ylabel('y[nT]');

