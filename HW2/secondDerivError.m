function [error] = secondDerivError(func, h, lb, ub)
    x = lb:0.1:ub;
    n = length(x);
    calculated_derivative = (func(x+h) - 2*func(x) + func(x-h)) / (h^2);
    analytical_derivative = -cos(x);
    error = (1/n) * sum((calculated_derivative - analytical_derivative).^2);
end