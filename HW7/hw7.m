% Example function: x^2 - 2x - 1
% Bisection Method
function [y] = example_func(x)
    y = x^2 - 2*x - 1;
end

a = 1;
b = 2;
epsilon = 0.0001;
root = bisection_method(@example_func, a, b, epsilon);
disp("The root is approximately " + num2str(root));

%  The root is approximately 1.6180.





% Example function: x^3 - x - 1
% Regula Falsi Method
function [y] = example_func(x)
    y = x^3 - x - 1;
end

a = 1;
b = 2;
epsilon = 0.0001;
root = false_position_method(@example_func, a, b, epsilon);
disp("The root is approximately " + num2str(root));

% The root is approximately 1.3247.






% Example function: e^(-x) - x
% Secant Method
function [y] = example_func(x)
    y = exp(-x) - x;
end

x0 = 0;
x1 = 1;
epsilon = 0.0001;
root = secant_method(@example_func, x0, x1, epsilon);
disp("The root is approximately " + num2str(root));

% The root is approximately 0.5671.







% Example function: x^3 - 2x - 5
% Newton's Method
function [y] = example_func(x)
    y = x^3 - 2*x - 5;
end

% First derivative of the example function: 3x^2 - 2
function [y] = example_dfunc(x)
    y = 3*x^2 - 2;
end

x0 = 2;
epsilon = 0.0001;
root = newton_method(@example_func, @example_dfunc, x0, epsilon);
disp("The root is approximately " + num2str(root));

% The root is approximately 1.7716
