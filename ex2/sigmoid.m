function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).
% my nasty code
%sz = size(z);
%rows = sz(1,1);
%cols = sz(1,2);

%expVal = exp(-z);
%expVal = 1 + expVal;

%for (i=1:rows)
%  for (j=1:cols)
%    g(i,j) = 1/expVal(i,j);
%end


% Better code
g = ones(size(z)) ./ (1.0+exp(-z));

% =============================================================

end
