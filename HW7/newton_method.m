function [root] = newton_method(func, dfunc, x0, epsilon)
    f = func(x0);
    
    while abs(f) > epsilon
        x0 = x0 - f/dfunc(x0);
        f = func(x0);
    end
    
    root = x0;
end
