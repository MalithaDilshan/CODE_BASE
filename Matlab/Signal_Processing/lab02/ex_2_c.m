% Author : Malitha Dilshan
% Title  : Exercise 02-part c
% Date   : 2017-09-26

h = [2,4,8,16,32,64,0,0,0,0,0,0,0,0,0];  % h[n] 
x = [1,1,1,1,1,0,0,0,0,0,0,0,0,0,0]; % x[n] 
% display(x);
k = conv(x,h);  %use the conv matlab inbuit function
z = findConvolution(x,h); % manualy created function

display(z);

% define plot
subplot(4,1,1)
stem(h,'r','linewidth',1.5);
axis([0 30 0 70]);
xlabel('n(samples)');
ylabel('h[n]');

subplot(4,1,2)
stem(x,'r','linewidth',1.5);
axis([0 30 0 2]);
xlabel('n(samples)');
ylabel('x[n]');

subplot(4,1,3)
stem(z,'r','linewidth',1.5);
axis([0 30 0 124]);
xlabel('n(samples)');
ylabel('x[n]*h[n]');

subplot(4,1,4)
stem(k,'r','linewidth',1.5);
axis([0 30 0 124]);
xlabel('n(samples)');
ylabel('conv(x,h)');


