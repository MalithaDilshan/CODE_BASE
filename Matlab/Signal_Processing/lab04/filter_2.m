% Author : Malitha Dilshan
% Title  : Lab 04-ii : design a butterworth filter
% Date   : 2017-09-31

% Design the Butterworth filter	with Fp	=1000	Hz,	N=4;


Fp = 1000;
Fs = 4000;  % asumption
F  = 10000;  % sampling frequency

Wp = Fp/F;  % pass band (noralized)
Ws = Fs /F;  % stop band (normalized)
% get the filter order assume that maximum pass band attenuation is 3dB
% and the stop band attenuation is 30 dB

[n,Wn] = buttord(Wp,Ws,0.2,30); %Wn cut off frequency
[a,b] = butter(4,Wn);
freqz(a,b);
title(sprintf('n = %d Butterworth Lowpass Filter',n))

