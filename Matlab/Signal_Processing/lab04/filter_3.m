% Author : Malitha Dilshan
% Title  : Lab 04-iii : Design Chebyshev	Type 1 filter with N=4,	Rp=2, Fp=1000
% Date   : 2017-09-31


N = 4;
Rp = 2;
Fp = 1000;

[a,b] = cheplap(N, Rp);
freqz(a,b);
title(sprintf('N = %d Chebyshev Lowpass Filter',N))

