% Author : Malitha Dilshan
% Title  : Lab 01-Part2:Exercise01 - Get the convolution and plot them in
% same plot
% Date   : 2017-09-22

clear all;
close all;

n = 0:3;
% display(n);
h = (0.5).^n;
% display(h);

y = [1, 2, 2.5, 3, 3, 3, 2, 1,0];
x = deconv(y,h);  % get the deconvolution using 'deconv' inbuit function
display(x);
% define plot
subplot(3,1,1)
stem(y,'r');
axis([0 10 0 4]);
xlabel('time(sec)');
ylabel('y(t)');

subplot(3,1,2)
stem(h,'r');
axis([0 5 0 1.5]);
xlabel('time(sec)');
ylabel('h(t)');

subplot(3,1,3)
stem(x,'r');
%display(x);
axis([0 7 0 3]);
xlabel('time(sec)');
ylabel('deconv(y(t)*h(t))=x(t)');

