function [xmin, fmin] = SA(f, dim, domain, start, T0, Lambda, minTemp)
% Simulated Annealing algorithm for global optimization
% f: function to be optimized
% dim: number of input arguments to f
% domain: domain of the input arguments
% start: starting point for the algorithm
% T0: initial temperature
% Lambda: cooling rate
% minTemp: minimum temperature to stop the algorithm
% xmin: minimum point found
% fmin: minimum value found

% Initialize variables
xcur = start;
fcur = feval(f, xcur);
xmin = xcur;
fmin = fcur;
T = T0;

% Main loop
while T > minTemp
    % Generate new point
    xnew = xcur + (rand(dim, 1) - 0.5) * T;
    
    % Check if new point is within the domain
    if all(xnew >= domain(1)) && all(xnew <= domain(2))
        fnew = feval(f, xnew);
        deltaF = fnew - fcur;
        if deltaF < 0
            % New point is better than current point, accept it
            xcur = xnew;
            fcur = fnew;
            if fcur < fmin
                % New point is the best found so far
                xmin = xcur;
                fmin = fcur;
            end
        else
            % New point is worse than current point, accept it with
            % probability e^(-deltaF/T)
            if rand() < exp(-deltaF/T)
                xcur = xnew;
                fcur = fnew;
            end
        end
    end
    
    % Decrease the temperature
    T = Lambda * T;
end
end
