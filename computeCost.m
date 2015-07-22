function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

Jt1 = 0;
Jt2 = 0;
h = 0;
for iterations = 1:1500
    
        for i =1:m
            h(i) = X(i,:) * theta ;         
            J = J + (h(i) - y(i))^2;
            Jt1 = Jt1 + (h(i) - y(i)) * X(i,1);
            Jt2 = Jt2 + (h(i) - y(i)) * X(i,2);
        end
     
    J = (0.5 / m) * J;
    theta(1) = theta(1) - 0.01 * Jt1 / m;
    theta(2) = theta(2) - 0.01 * Jt2 / m;
    
return ;


% =========================================================================

end
