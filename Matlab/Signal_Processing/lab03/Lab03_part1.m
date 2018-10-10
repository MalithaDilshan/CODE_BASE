% Author : Malitha Dilshan
% Title  : Lab 03-Part1: Pole-Zero Diagrams in MATLAB.
% Date   : 2017-09-30

clear all;
close all;


% H(s) = s+5/(s^2+2*s+3)
%{
b = [1 5]; % Numerator coefficients
a = [1 2 3]; % Demoninator coefficients
zs = roots(b); % Generetes Zeros
ps = roots(a); % Generetes poles
pzmap(ps,zs); % generates pole-zero diagram
grid on  
%}

% H(s) = (2*s^2+5*s+12)/(s^2+2*s+10)
%{
b = [2 5 12]; % Numerator coefficients
a = [1 2 10]; % Demoninator coefficients
zs = roots(b); % Generetes Zeros
ps = roots(a); % Generetes poles
pzmap(ps,zs); % generates pole-zero diagram
grid on
%}

% H(s) = (2*s^2+5*s+12)/(s^2+2*s+10)(s+2)
% H(s) = (2*s^2+5*s+12)/(s^3+4*s^2+14*s+20)

b = [2 5 12]; % Numerator coefficients
a = [1 4 14 20]; % Demoninator coefficients
zs = roots(b); % Generetes Zeros
ps = roots(a); % Generetes poles
pzmap(ps,zs); % generates pole-zero diagram
grid on






