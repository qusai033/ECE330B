function [error] = firstDerivError(func, h, lb, ub)
    x = lb:0.1:ub;
    n = length(x);
    calculated_derivative = (func(x+h) - func(x)) / h;
    analytical_derivative = -sin(x);
    error = (1/n) * sum((calculated_derivative - analytical_derivative).^2);
end