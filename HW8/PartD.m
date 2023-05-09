% Define the fitness function
f = @(x) -sum(sin(x(11-(1:10))).*(sin((1:10).*x.^2/pi)).^(2*10));

% Define problem parameters
dim = 10;
domain = [0, pi];
start = pi/2*ones(dim,1);
T0 = 10^8;
Lambda = 0.999999;
minTemp = 1;

% Run the SA routine
[xmin, fmin] = SA(f, dim, domain, start, T0, Lambda, minTemp, 100000000);

% Display the results
format long
disp('Start point:')
disp(start')
disp('Best point:')
disp(xmin')
disp('Function value at the best point:')
disp(fmin)
