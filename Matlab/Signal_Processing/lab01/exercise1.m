
% Author : Malitha Dilshan
% Title  : Lab 01-Part2:Exercise01 - Get the convolution and plot them in
% same plot
% Date   : 2017-09-22

clear all;
close all;

% define signals
x1 = [1,2,4];
h1 = [1,1,1,1,1];

x2 = [1,2,3,4,5];
h2 = 1;

x3 = [1,2,0,2,1];
h3 = [1,2,0,2,1];

% ploting the signals
subplot(3,3,1)
stem(x1,'r');
axis([0 4 0 5]);
xlabel('time(sec)');
ylabel('x1(t)');

subplot(3,3,2)
stem(h1,'r');
axis([0 6 0 2]);
xlabel('time(sec)');
ylabel('h1(t)');

subplot(3,3,3)
stem(conv(x1,h1),'r');
%display(conv(x1,h1))
axis([0 8 0 8]);
xlabel('time(sec)');
ylabel('x1(t)*h1(t)');

subplot(3,3,4)
stem(x2,'r');
axis([0 6 0 6]);
xlabel('time(sec)');
ylabel('x2(t)');

subplot(3,3,5)
stem(h2,'r');
axis([0 2 0 2]);
xlabel('time(sec)');
ylabel('h2(t)');

subplot(3,3,6)
stem(conv(x2,h2),'r');
%display(conv(x2,h2))
axis([0 6 0 7]);
xlabel('time(sec)');
ylabel('x2(t)*h2(t)');

subplot(3,3,7)
stem(x3,'r');
axis([0 6 0 3]);
xlabel('time(sec)');
ylabel('x3(t)');

subplot(3,3,8)
stem(h3,'r');
axis([0 6 0 3]);
xlabel('time(sec)');
ylabel('h3(t)');

subplot(3,3,9)
stem(conv(x3,h3),'r');
%display(conv(x3,h3))
axis([0 10 0 11]);
xlabel('time(sec)');
ylabel('x3(t)*h3(t)');