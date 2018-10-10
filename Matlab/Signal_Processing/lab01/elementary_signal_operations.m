% Author : Malitha Dilshan
% Title  : Lab 01-Part2:Elementary signal operations
% Date   : 2017-09-21

close all;
clear all;

F_s = 100;  % define the pefered frequency
T_s = 1/F_s;
t = -5:T_s:5;

t0 = -10:T_s:10; % define the range of plot(t axis)

% get the comparisons
%{
x1 = rect(t,t0);
plot(t0,x1,'r','linewidth',1.5);
axis([-10 10 -1 2]);

hold on
grid on

x2 = rect(t-1,t0);
plot(t0,x2,'g','linewidth',1.5);
x3 = rect(t/2,t0);
plot(t0,x3,'b','linewidth',1.5);

hold off
xlabel('time(sec)');
ylabel('x_1(t)');
title('plot 1: A rectangular pulse');
%}

% subplots of the elementary operations

subplot(3,2,1)
x1 = rect(t,t0);
plot(t0,x1,'r','linewidth',1.2);
axis([-10 10 -1 2]);
xlabel('time(sec)');
ylabel('x_1(t)=rect(t)');

subplot(3,2,2)
x2 = rect(t-1,t0);
plot(t0,x2,'r','linewidth',1.2);
axis([-10 10 -1 2]);
xlabel('time(sec)');
ylabel('x_2(t)=rect(t-1)');

subplot(3,2,3)
x3 = rect(t/2,t0);
plot(t0,x3,'r','linewidth',1.2);
axis([-10 10 -1 2]);
xlabel('time(sec)');
ylabel('x_3(t)=rect(t/2)');

subplot(3,2,4)
x4 = x1+(1/2)*x2;
plot(t0,x4,'r','linewidth',1.2);
axis([-10 10 -1 2]);
xlabel('time(sec)');
ylabel('x_4(t)=rect(t)+1/2*rect(t-1)');

subplot(3,2,5)
x5 = rect(-t,t0)+(1/2)*rect(-t-1,t0);
plot(t0,x5,'r','linewidth',1.2);
axis([-10 10 -1 2]);
xlabel('time(sec)');
ylabel('x_4(-t)');

subplot(3,2,6)
x6 = rect(1-t,t0)+(1/2)*rect(-t,t0);
plot(t0,x6,'r','linewidth',1.2);
axis([-10 10 -1 2]);
xlabel('time(sec)');
ylabel('x_4(1-t)');






