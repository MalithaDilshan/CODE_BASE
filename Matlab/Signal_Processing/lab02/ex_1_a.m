% Author : Malitha Dilshan
% Title  : Lab 02-Part1: plot x[n] = 10*b^n for positive n
% Date   : 2017-09-29

clear all;
close all;

n = 0:10;
syms b  % beta

% define plot
subplot(2,2,1)
b = -1.3;
h = 10*b.^n;
%display(h);
stem(n,h,'r','linewidth',1.5);
axis([-1 11 -150 150]);
xlabel('n');
ylabel('x[n] for b=-1.3');

subplot(2,2,2)
b = -0.5;
h = 10*b.^n;
stem(n,h,'r','linewidth',1.5);
axis([-1 11 -11 11]);
xlabel('n');
ylabel('x[n] for b=-0.5');

subplot(2,2,3)
b = 0.5;
h = 10*b.^n;
stem(n,h,'r','linewidth',1.5);
axis([-1 11 -11 11]);
xlabel('n');
ylabel('x[n] for b=0.5');

subplot(2,2,4)
b = 1.3;
h = 10*b.^n;
stem(n,h,'r','linewidth',1.5);
axis([-1 11 -150 150]);
xlabel('n');
ylabel('x[n] for b=1.3');


