clear; close all; clc;

% read the training data
data = load('examples.txt');

% initialize Matrices and Variables
x = data(:, 1);     % featue matrix
y = data(:, 2);     % results matrix

p = cal_p_grad_desc(y,x)
p = cal_p_ols(y,x)