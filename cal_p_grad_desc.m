function [p] = cal_p_grad_desc( y,x )
m = length(y);      % number of training examples
theta = zeros(2, 1);     % initial weights
iterations = 1500;  % Iterations needed for Gradient Descent
alpha = 0.01;       % Learning Rate


% Compute the Cost Function
X = [ones(m, 1), x];

% Run Gradient Descent
[theta, Js] = GradientDescent(X, y, theta, alpha, iterations);
b =theta(2);
a = theta(1);
theta = sqrt(sum((y-mean(y)).^2)/(m-2));
t = b/theta*sqrt(sum((X(:,2)-mean(X(:,2))).^2));
p = 1 - tcdf(t,m);
end