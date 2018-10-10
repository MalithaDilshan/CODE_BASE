% Author : Malitha Dilshan
% Title  : Lab 01-Part1:Basic signal representation in MATLAB
% Date   : 2017-09-21

function y = ustep(t,ad)
% This function will generate the unit step function according to the given
% ad
% @parameters
% t = time vector
% ad =  switch time 

% get the number of samples in the time vector
N = numel(t);
% initializing the return vector 
y = zeros(N,1);

% generate the unit step
if median(diff(t))>0
    startInd = find(t>=ad, 1 );
    indVector = startInd:N;  % get the vector for unit step value
   
elseif median(diff(t))<0
    % for time reversed functions 
    ad = -ad;
    startInd = find(t>=ad, 1, 'last' );
    indVector = 1:startInd;   % get the vector for unit step value
    
end

% set the unit step value for selected vector region
y(indVector) = 1;


return