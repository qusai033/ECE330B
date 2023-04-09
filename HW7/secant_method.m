function [root] = secant_method(func, x0, x1, epsilon)
    f0 = func(x0);
    f1 = func(x1);
    
    while abs(f1) > epsilon
        x2 = x1 - f1*(x1-x0)/(f1-f0);
        x0 = x1;
        x1 = x2;
        f0 = f1;
        f1 = func(x1);
    end
    
    root = x1;
end
