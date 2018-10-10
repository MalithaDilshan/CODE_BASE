% Author : Malitha Dilshan
% Title  : Lab 02-Exersice 01-part-b(i)
% Date   : 2017-09-26
% Details : descrete time frequency = 2*pi*f*T   ; f - frequency of signal
%                                                ; T - samping time

clear all;
close all;


n = 0:20;

subplot(3,3,1)
f = 0*n;
y = cos(f);
stem(n,y,'r','linewidth',1.5);
axis([0 20 -1.5 1.5]);
grid on;
xlabel('n');
ylabel('y[n]');

subplot(3,3,2)
f = pi*n/8;
y = cos(f);
stem(n,y,'r','linewidth',1.5);
axis([0 20 -1.5 1.5]);
grid on;
xlabel('n');
ylabel('y[n]');

subplot(3,3,3)
f = pi*n/4;
y = cos(f);
stem(n,y,'r','linewidth',1.5);
axis([0 20 -1.5 1.5]);
grid on;
xlabel('n');
ylabel('y[n]');

subplot(3,3,4)
f = pi*n/2;
y = cos(f);
stem(n,y,'r','linewidth',1.5);
axis([0 20 -1.5 1.5]);
grid on;
xlabel('n');
ylabel('y[n]');

subplot(3,3,5)
f = pi*n;
y = cos(f);
stem(n,y,'r','linewidth',1.5);
axis([0 20 -1.5 1.5]);
grid on;
xlabel('n');
ylabel('y[n]');

subplot(3,3,6)
f = 3*pi*n/2;
y = cos(f);
stem(n,y,'r','linewidth',1.5);
axis([0 20 -1.5 1.5]);
grid on;
xlabel('n');
ylabel('y[n]');

subplot(3,3,7)
f = 7*pi*n/4;
y = cos(f);
stem(n,y,'r','linewidth',1.5);
axis([0 20 -1.5 1.5]);
grid on;
xlabel('n');
ylabel('y[n]');

subplot(3,3,8)
f = 15*pi*n/8;
y = cos(f);
stem(n,y,'r','linewidth',1.5);
axis([0 20 -1.5 1.5]);
grid on;
xlabel('n');
ylabel('y[n]');

subplot(3,3,9)
f = 2*pi*n;
y = cos(f);
stem(n,y,'r','linewidth',1.5);
axis([0 20 -1.5 1.5]);
grid on;
xlabel('n');
ylabel('y[n]');

