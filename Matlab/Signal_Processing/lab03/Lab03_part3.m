% Author : Malitha Dilshan
% Title  : Lab 03-Part3: Surface Plots of a System Function in MATLAB
% Date   : 2017-09-30

clear all;
close all;

% define sigma and omega
sigma = -5:0.05:5;
omega = -20:0.05:20;

%disp(sigma);

[sigmagrid,omegagrid] = meshgrid(sigma,omega); % define the grid
sgrid = sigmagrid+1i*omegagrid;    % define the plain
% disp(sgrid); % display the grid

% H(s) = s-1/(s^2+2*s+2)
b = [1 -1]; % Numerator coefficients
a = [1 3 2]; % Demoninator coefficients

% evaluate the numerator and denominator polynomials at the specific range
H1 = polyval(b,sgrid)./polyval(a,sgrid); % generate the frequency responce in grid 
% disp(H1);
mesh(sigma,omega,20*log10(abs(H1)));

