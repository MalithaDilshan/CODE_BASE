% Author : Malitha Dilshan
% Title  : Lab 03-Part2: Bode plot of all signals in part 1
% Date   : 2017-09-30

clear all;
close all;

syms t s
reg_num = 200;
b = 1000;  % kHz

% define frequencies
f1 = reg_num*b*1;
f2 = reg_num*b*2;
f3 = reg_num*b*3;

% difine signals
%t = linspace(0,25,0.001);  % define time

s1 = cos(2*pi*f1*t);
s2 = cos(2*pi*f2*t);
s3 = cos(2*pi*f3*t);

% get the laplace transform of the signal (define s domain)
L_s1 = laplace(s1,t,s);
L_s2 = laplace(s2,t,s);
L_s3 = laplace(s3,t,s);

% simplifing the answers
simplify(L_s1);
simplify(L_s2);
simplify(L_s3);
display('**********************************************************');
display('Laplace transform of tree signals');
display('L_s1 =');
pretty(L_s1);
display('L_s2 =');
pretty(L_s2);
display('L_s3 =');
pretty(L_s3);
display('**********************************************************');

% frequency responces of the systems

h1 = (s-1)/(s^2+2*s+2);
h2 = (s+5)/(s^2+2*s+3);
h3 = (2*s^2+5*s+12)/(s^2+2*s+10);
h4 = (2*s^2+5*s+12)/(s^3+4*s^2+14*s+20);

% multiplication if H(s) and the L(x(t)) give the y(s)
% get the y(s) for all signals

% system 1
y1 = ilaplace(simplify(h1*L_s1));
y2 = ilaplace(simplify(h1*L_s2));
y3 = ilaplace(simplify(h1*L_s3));

% outputs of signals in time domain
display('outputs of signals in time domain for system1 :');
display('y_s1(t)');
pretty(y1);
display('y_s2(t)');
pretty(y2);
display('y_s3(t)');
pretty(y3);

display('........................................................');

% system 2
y1 = ilaplace(simplify(h2*L_s1));
y2 = ilaplace(simplify(h2*L_s2));
y3 = ilaplace(simplify(h2*L_s3));

% outputs of signals in time domain
display('outputs of signals in time domain for system2 :');
display('y_s1(t)');
pretty(y1);
display('y_s2(t)');
pretty(y2);
display('y_s3(t)');
pretty(y3);

display('........................................................');

% system 3
y1 = ilaplace(simplify(h3*L_s1));
y2 = ilaplace(simplify(h3*L_s2));
y3 = ilaplace(simplify(h3*L_s3));

% outputs of signals in time domain
display('outputs of signals in time domain for system3 :');
display('y_s1(t)');
pretty(y1);
display('y_s2(t)');
pretty(y2);
display('y_s3(t)');
pretty(y3);

display('........................................................');

% system 4
y1 = ilaplace(simplify(h4*L_s1));
y2 = ilaplace(simplify(h4*L_s2));
y3 = ilaplace(simplify(h4*L_s3));

% outputs of signals in time domain
display('outputs of signals in time domain for system4 :');
display('y_s1(t)');
pretty(y1);
display('y_s2(t)');
pretty(y2);
display('y_s3(t)');
pretty(y3);

display('........................................................');




















