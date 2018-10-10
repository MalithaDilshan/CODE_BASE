% Author : Malitha Dilshan
% Title  : Lab 03-Part2: Frequency Response and Bode Plots in MATLAB
% Date   : 2017-09-30

clear all;
close all;


% H(s) = 2*s^2+2*s+17/(s^2+4*s+104)
b = [2 3 17]; % Numerator coefficients
a = [1 4 104]; % Demoninator coefficients

omega = -20:0.2:20;
H = freqs(b,a,omega);

amplitude = abs(H);  % get the amplitude of the frequency components
angles = angle(H);   % get the angles of the frequency components   
%display(angles);

subplot(2,1,1)
plot(omega,amplitude,'r','linewidth',1.3);
axis([-20 20 0 5]);
xlabel('Omega(rad/s)');
ylabel('Amplitude');

subplot(2,1,2)
plot(omega,angles,'r','linewidth',1.3);
axis([-20 20 0 3]);
xlabel('Omega(rad/s)');
ylabel('Phase');