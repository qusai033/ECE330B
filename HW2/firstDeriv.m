function [y] = firstDeriv(func, h, lb, ub)
    x = lb:0.1:ub;
    y = (func(x+h) - func(x)) / h;
end