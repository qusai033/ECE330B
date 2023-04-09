function [root] = false_position_method(func, a, b, epsilon)
    if func(a) * func(b) >= 0
        disp("False position method fails.")
        root = NaN;
        return;
    end
    
    c = a;
    while abs(func(c)) > epsilon
        c = (a*func(b) - b*func(a))/(func(b) - func(a));
        if func(c)*func(a) < 0
            b = c;
        else
            a = c;
        end
    end
    
    root = c;
end
