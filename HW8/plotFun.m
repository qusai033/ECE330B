function plotFun(x0, x1, y0, y1)
    [x,y] = meshgrid(x0:(x1-x0)/100:x1, y0:(y1-y0)/100:y1);
    z = -x .* sin(sqrt(abs(x))) - y .* sin(sqrt(abs(y)));
    surf(x,y,z);
    xlabel('x');
    ylabel('y');
    zlabel('f(x,y)');
end
