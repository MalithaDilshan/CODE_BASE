% Author : Malitha Dilshan
% Title  : Lab 01-Part1:Find the envelope of the damping signal using MATLAB
% and them in same figure 
% Date   : 2017-09-21

Ts = 0.00001;
t = 0:Ts:5;

y = 3.*exp(-t).*cos(4*pi.*t);
%display(y);
plot(t,y,'r','linewidth',2.0);

%compute the upper and lower bound envelopes of the signal y

%[up,lo] = envelope(y);  % if you have signal processing tool box in matlab use this
% else use follows
% here I calculate the upper and lower bounds of the signal manualy
up = 3.*exp(-t);
lo = -3.*exp(-t);
hold on
plot(t,up,t,lo,'linewidth',1.3);
legend('y','up','lo');
hold off
