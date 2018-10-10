% Author : Malitha Dilshan
% Title  : Lab 01-Part2:Generate a rectangular pulse
% Date   : 2017-09-21

function x = rect(limit,time_axis)
% This function will generate a rectangular pulse according to the given
% limit
% @parameters
% limit = limit of the pulse that should generate
% time_axis = time axis for other values(zeros)

% get the number of samples in the time vector
N = numel(time_axis);
N0 = numel(limit);
% initializing the return vector 
x = zeros(N,1);

if N>N0 && median(diff(limit))>=0
    startInd = find(time_axis>=limit(1), 1 );
    endInd = find(time_axis<=limit(N0), 1, 'last' );
    indVector = startInd:endInd;  
elseif N>N0 && median(diff(limit))<0    
% for time reversed functions 
    startInd = find(time_axis<=limit(N0), 1,'last' );
    endInd = find(time_axis>=limit(1), 1);
    indVector = startInd:endInd;  
    
    
end 
%display(N);
% set the unit step value for selected vector region
x(indVector) = 1;



return