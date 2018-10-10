% Author : Malitha Dilshan
% Title  : Lab 01-Part1:Basic signal representation in MATLAB
% Date   : 2017-09-21

function y = ramp(t,slope,ad)
% This function will generate the ramp function according to the given
% ad
% @parameters
% t = time vector
% slop = angle
% ad =  switch time 

% get the number of samples in the time vector
N = numel(t);
% initializing the return vector 
y = zeros(N,1);

% generate the ramp
if median(diff(t))>0
    startInd = find(t>=ad, 1 );
    indVector = startInd:N;  
   
elseif median(diff(t))<0
    % for time reversed functions 
    ad = -ad;
    % invert the slop
    slope = - slope;
    startInd = find(t>=ad, 1, 'last' );
    indVector = 1:startInd;     
end

% display(ad*atan(slope));

% set the unit step value for selected vector region
% y = mx+c 
y(indVector) = slope.*t(indVector)- ad*slope;

return