% Author : Malitha Dilshan
% Title  : Lab 04-i : design a butterworth filter
% Date   : 2017-09-31

% Design	the	Butterworth	filter with	the	following specifications: 
% Fp = 1000Hz;Fs=5000Hz;


Fp = 1000;
Fs = 5000;
F  = 10000;  % sampling frequency

Wp = Fp/F;  % pass band (noralized)
Ws = Fs /F;  % stop band (normalized)
% get the filter order assume that maximum pass band attenuation is 3dB
% and the stop band attenuation is 30 dB

[n,Wn] = buttord(Wp,Ws,0.2,30); %Wn cut off frequency
[a,b] = butter(n,Wn);
freqz(a,b);
title(sprintf('n = %d Butterworth Lowpass Filter',n))

