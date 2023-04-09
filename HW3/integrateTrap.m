function integral = integrateTrap(f, width, lowerBound, upperBound)
    n = ((upperBound-lowerBound)/width) + 1;
    i = 1;
    integral = (width/2)*f(lowerBound);
    lowerBound = lowerBound + width;
    %lowerBound < upperBound - width
    while(i < n-1)
        integral = integral + width*(f(lowerBound));
        i = i + 1;
        lowerBound = lowerBound + width;
    end
    integral = integral + (width/2)*f(lowerBound);
end