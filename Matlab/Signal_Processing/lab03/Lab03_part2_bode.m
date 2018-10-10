% Author : Malitha Dilshan
% Title  : Lab 03-Part2: Frequency Response and Bode Plots in MATLAB
% Date   : 2017-09-30

clear all;
close all;


% H(s) = 2*s^2+2*s+17/(s^2+4*s+104)
a = [2 3 17]; % Numerator coefficients
b = [1 4 104]; % Demoninator coefficients
H = tf(a,b);
bode(H,'r');