% Author : Malitha Dilshan
% Title  : Implement discrite convolution for n>0 manually
% Date   : 2017-09-25

function c = findConvolution(X, Y)

len_x = length(X);
len_y = length(Y);
size = len_x+(len_y-1); % find the length of the convolution vector

c = zeros(size,1);
new_X = zeros(size,1);  % new array that contains zeros
new_Y = zeros(size,1);
reverse_Y = zeros(size,1); % reversed array

for k=1:len_x
     new_X(k) = X(k);  % set dimentions of X
end

for k=1:len_y
     new_Y(k) = Y(k);   % set dimentions of Y
end

for k=1:size
     reverse_Y(k) = new_Y(size-k+1);
     %display(reverse_Y);
end

%display(size);

for i=1:size
    sum = 0;
    for j=1:i
        sum = sum+new_X(j)*new_Y(i-j+1);
    end
    c(i) = sum;
end

c = c'; % get the transpose
return 
end
