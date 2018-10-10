% Author : Malitha Dilshan
% Title  : Exercise 02-part b
% Date   : 2017-09-26

h = 1:20;  % h[n] for n>0 
x = (0.5).^h;  % x[n] 
% display(x);


% define plot
subplot(3,1,1)
stem(h,'r','linewidth',1.5);
axis([0 40 0 21]);
xlabel('n(samples)');
ylabel('h[n]');

subplot(3,1,2)
stem(x,'r','linewidth',1.5);
axis([0 40 0 1]);
xlabel('n(samples)');
ylabel('x[n]');

subplot(3,1,3)
z = findConvolution(x,h);
display(z);
stem(z,'r','linewidth',1.5);
axis([0 40 0 20]);
xlabel('n(samples)');
ylabel('x[n]*h[n]');

