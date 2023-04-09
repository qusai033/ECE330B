% Bisection Method
function [root] = bisection_method(func, a, b, epsilon)
    if func(a) * func(b) >= 0
        error("Function has the same sign at endpoints of interval");
    end

    while (b - a) > epsilon
        c = (a + b) / 2;
        if func(c) == 0
            root = c;
            return
        elseif func(c) * func(a) < 0
            b = c;
        else
            a = c;
        end
    end

    root = (a + b) / 2;
end