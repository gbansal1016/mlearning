function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
h = zeros(size(y));

n = size(X,2);  %features
for (i=1:m)
  h(i) = sigmoid(X(i,:)*theta);
  hPos(i) = -y(i)*log(h(i));
  hNeg(i) = -(1-y(i))*log(1-h(i));
end

%*sum(theta * theta')
theta1 = theta(2:n,:)
J = (1/m * sum(hPos + hNeg)) + ((lambda/(2.0*m))*sum(theta1 .^2) );

v = h - y;
grad(1) = 1/m * sum( v' * X(:,1));
for ( i = 2: size(theta))
  grad(i) = 1/m * (sum( v' * X(:,i)) + lambda * theta(i));
end


% =============================================================

end
