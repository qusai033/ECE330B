function [y] = secondDeriv(func, h, lb, ub)
    x = lb:0.1:ub;
    y = (func(x+h) - 2*func(x) + func(x-h)) / (h^2);
end