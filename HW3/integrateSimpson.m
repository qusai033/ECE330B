function integral = integrateSimpson(f, width, lowerBound, upperBound)
    n = ((upperBound-lowerBound)/width) + 1;
    integral = (width/3)*f(lowerBound);
    lowerBound = lowerBound + width;
    while(lowerBound < upperBound - 2*width)
        integral = integral + (4*width/3)*f(lowerBound);
        lowerBound = lowerBound + width;
        integral = integral + (2*width/3)*f(lowerBound);
        lowerBound = lowerBound + width;
    end
    if mod(n,2) == 0
        integral = integral - (2*width/3)*f(lowerBound-width);
        integral = integral + (4*width/3)*f(lowerBound);
    else
        integral = integral + (4*width/3)*f(lowerBound);
    end
    integral = integral + (width/3)*f(upperBound);
end