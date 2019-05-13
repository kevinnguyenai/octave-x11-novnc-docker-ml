function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% option1
%delta = pinv(X*theta - y)*(X*theta - y);
%J = delta/(2*m);

% option2
prediction = 0.0;
for j = 1:m
   prediction += theta(j).*X(:,j);
endfor
J = 1/(2*m)*(prediction -y).^2;

% =========================================================================

end
