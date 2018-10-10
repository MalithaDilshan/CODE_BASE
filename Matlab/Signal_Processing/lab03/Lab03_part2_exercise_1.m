% Author : Malitha Dilshan
% Title  : Lab 03-Part2: Bode plot of all signals in part 1
% Date   : 2017-09-30

clear all;
close all;

% H(s) = s-1/(s^2+2*s+2)
b = [1 -1]; % Numerator coefficients
a = [1 3 2]; % Demoninator coefficients
H = tf(b,a);
subplot(2,2,1);
bode(H,'r');

% H(s) = s+5/(s^2+2*s+3)
b = [1 5]; % Numerator coefficients
a = [1 2 3]; % Demoninator coefficients
H = tf(b,a);
subplot(2,2,2);
bode(H,'r');

% H(s) = (2*s^2+5*s+12)/(s^2+2*s+10)
b = [2 5 12]; % Numerator coefficients
a = [1 2 10]; % Demoninator coefficients
H = tf(b,a);
subplot(2,2,3);
bode(H,'r');

% H(s) = (2*s^2+5*s+12)/(s^3+4*s^2+14*s+20)
b = [2 5 12]; % Numerator coefficients
a = [1 4 14 20]; % Demoninator coefficients
H = tf(b,a);
subplot(2,2,4);
bode(H,'r');