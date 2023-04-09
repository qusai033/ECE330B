function integral = integrateGL(f, N, lowerBound, upperBound)

    %Tested with e^(2x) and sin(x)
    integral = 0;
    if N < 10
        file = "GAUSS-0" + int2str(N) + ".DAT";
    else
        file = "GAUSS-" + int2str(N) + ".DAT";
    end
    high = (upperBound+lowerBound)/2;
    low = (upperBound-lowerBound)/2;
    data = importdata(file);
    for i = 1:1:N
        integral = integral + (data(i+N))*(f(low*data(i)+high));
    end
    integral = integral*low;
end