function [p] = cal_p_ols( y,x )
m = length(x);
b = sum((x-mean(x)).*(y-mean(y)))/sum((x-mean(x)).^2);
a = mean(y) - b * mean(x);
theta = sqrt(sum((y-mean(y)).^2)/(m-2));
t = b/theta*sqrt(sum((x-mean(x)).^2));
p = 1 - tcdf(t,m);
end
